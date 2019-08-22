class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    @boats = @boats.where('location ILIKE ?', "%#{params[:location].capitalize}%") if params[:location].present?
    @boats = @boats.where('boat_type ILIKE ?', "%#{params[:boat_type].capitalize}%") if params[:boat_type].present?
    @boats = @boats.where("sleep_number >= #{params[:sleep_number].to_i}") if params[:sleep_number].present?
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
    @boat = Boat.find(params[:id])
    @booking = Booking.new
  end

  def new
    @boat = Boat.new
  end

  def create
    @user = current_user
    @boat = Boat.new(boat_params)
    @boat.user = @user
    if @boat.save
      redirect_to boats_path
    else
      render :new
    end
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    @boat.update(boat_params)
    # @boat.user = current_user
    redirect_to boats_path
  end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to boats_path
  end

  private

  def boat_params
    params.require(:boat).permit(:name, :location, :capacity, :price, :length, :description, :room_number, :sleep_number, :bathroom_number, :deck_number, :gallons_per_hour, :photo, :boat_type, :address)
  end
end
