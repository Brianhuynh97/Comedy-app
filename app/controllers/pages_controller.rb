class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    render :home
  end

  def lists
    @shows = Show.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    render :lists
  end
end
