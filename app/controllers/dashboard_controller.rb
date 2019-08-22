class DashboardController < ApplicationController
  skip_after_action :verify_authorized, :verify_policy_scoped
  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def show
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_index_path
  end

  def edit
    @booking = Booking.find(params[:id])
  end

 private

  def set_dashboard
      @dashboard = Dashboard.find(params[:id])
    end

end
