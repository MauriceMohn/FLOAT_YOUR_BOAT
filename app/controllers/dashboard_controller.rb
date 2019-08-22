class DashboardController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_index_path
  end
end
