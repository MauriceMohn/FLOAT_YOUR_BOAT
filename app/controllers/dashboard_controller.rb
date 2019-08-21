class DashboardController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
  end

  def destroy
  end

end
