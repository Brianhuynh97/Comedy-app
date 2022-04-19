class ShowsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]
  def index
    @shows = Show.all

    @markers = @shows.geocoded.map do |show|
      {
        lat: show.latitude,
        lng: show.longitude,
        info_window: render_to_string(partial: "info_window", locals: { show: show })
      }
    end
  end

  def show
    @review = Review.new
    @reviews = Review.where(show_id: params[:id])
    @booking = Booking.new

    bookings = Booking.where(show_id: params[:id])
    @available_seats = @show.capacity
    bookings.each do |booking|
      @available_seats -= booking.seat_quantity
    end
  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    @show.user = current_user
    @show.save!

    redirect_to shows_path
  end

  def edit
  end

  def update
    @show.update(show_params)
    redirect_to show_path(@show)
  end

  def destroy
    @show.destroy
    redirect_to shows_path
  end

  private

  def set_task
    @show = Show.find(params[:id])
  end

  def show_params
    params.require(:show).permit(:title, :description, :price, :location, :capacity, :datetime, :photo)
  end
end
