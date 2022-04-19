class ReviewsController < ApplicationController
  before_action :find_review, only: [:edit, :update, :destroy]
  before_action :find_show, only: [:new, :create]
  def new
    @review = Review.new
    # @show = Show.find(params[:show_id])
  end

  def create
    @review = Review.new(review_params)
    # @show = Show.find(params[:show_id])
    @review.show = @show
    @review.user = current_user

    @review.save
    if @review.save
      redirect_to show_path(@show)
    else
      # render :show as review form will be on the show page
      render 'shows/show'
    end
  end

  def edit
    # @review = Review.find(params[:id])
  end

  def update
    # @review = Review.find(params[:id])
    # @show = Show.find(params[:show_id])
    @show = @review.show
    @review.update(review_params)
    if @review.update(review_params)
      redirect_to show_path(@show)
    else
      # render :show as review form will be on the show page
      render 'shows/show'
    end
  end

  def destroy
    @show = @review.show
    @review.destroy
    redirect_to show_path(@show)
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def find_show
    @show = Show.find(params[:show_id])
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
