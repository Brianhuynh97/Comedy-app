class BookingsController < ApplicationController
  def create
    @show = Show.find(params[:show_id])
    @booking = Booking.new(booking_params)
    @booking.show = @show
    @booking.user = current_user
    @booking.status = "Pending host validation"
    if @booking.checkout_on && @booking.checkin_on
      @booking.value = (@booking.checkout_on - @booking.checkin_on).to_f * @booking.show.price.to_f
    else
      @booking.value = 0
    end
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to show_path(@show)
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
    @review = Review.new
  end

  def show
    set_booking
    @bed = @booking.show
  end

  def update
    set_booking
    @booking.status = "Pending host validation"
    @booking.save!
    redirect_to booking_path(@booking)
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to root_path
  end

  private

  def booking_params
    params.require(:booking).permit(:checkin_on, :checkout_on, :value, :status)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
