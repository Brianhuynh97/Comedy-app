class ShowsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]
  def index
    @shows = Show.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @show = Show.new
  end

  def create
    show = Show.new(show_params)
    show.save
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
    params.require(:show).permit(:title, :description, :price, :location, :capacity, :datetime)
  end
end
