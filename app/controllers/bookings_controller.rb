class BookingsController < ApplicationController
  def create
    @show = Show.find(params[:show_id])
    @booking = Booking.new(booking_params)
    @booking.show = @show
    @booking.user = current_user
    if @booking.save
      redirect_to lists_path
    else
      redirect_to show_path(@show)
    end
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:seat_quantity)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
