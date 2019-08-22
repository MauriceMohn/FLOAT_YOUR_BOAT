class BoatsController < ApplicationController
  before_action :authenticate_user!, only: :new
  before_action :set_boat, only: [:show, :edit, :update, :destroy]

  def index
    @boats = policy_scope(Boat)

    @boats_coordinates = Boat.geocoded
    @markers = @boats_coordinates.map do |boat|
      {
        lat: boat.latitude,
        lng: boat.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { boat: boat })
      }
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @boat = Boat.new
    authorize @boat
  end

  def create
    @user = current_user
    @boat.user = @user
    if @boat.save
      redirect_to boats_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @boat.update(boat_params)
    @boat.user = current_user
    redirect_to boats_path
  end

  def destroy
    @boat.destroy
    redirect_to boats_path
  end

  private

  def set_boat
      @boat = Boat.find(params[:id])
      authorize @boat
    end

  def boat_params
    params.require(:boat).permit(:name, :location, :capacity, :price, :length, :description, :room_number, :sleep_number, :bathroom_number, :deck_number, :gallons_per_hour, :photo, :boat_type, :address)
  end
end
