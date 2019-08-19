class BoatsController < ApplicationController
  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(:id)
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new
    @boat.create(boat_params)
    @boat.save
    redirect_to boats_path
  end

  def edit
    @boat = Boat.find(:id)
  end

  def update
    @boat = Boat.find(:id)
    @boat.update(boat_params)
    redirect_to boats_path
  end

  def destroy
    @boat = Boat.find(:id)
    @boat.destroy
    redirect_to boats_path
  end

  private
  def boat_params
    params.require(:boat).permit(:name, :location, :capacity, :price)
  end

end
