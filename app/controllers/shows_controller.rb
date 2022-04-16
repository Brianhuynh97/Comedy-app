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
  end

  def new
    @Show = Show.new
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
