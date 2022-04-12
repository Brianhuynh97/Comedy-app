class ShowsController < ApplicationController
  before_action :set_task, only: [ :show, :edit, :update, :destroy ]
  def index
    @shows = Show.all
  end

  def show
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

