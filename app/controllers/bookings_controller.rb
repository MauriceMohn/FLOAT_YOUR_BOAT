class BookingsController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped
  def index
    @bookings = Booking.all
  end

  def show
    @booking = policy_scope(Boat)

    @booking = Booking.find(params[:id])
  end

  def new
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new
  end

  def create
    @boat = Boat.find(params[:boat_id])
    @booking = Booking.new(booking_params)
    @booking.boat = @boat
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_index_path
    else
      render 'boats/show'
    end
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to dashboard_index_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_index_path
  end

  private

  def booking_params
    params.require(:booking).permit(:number_of_guests, :pickup_date, :return_date)
  end
end
