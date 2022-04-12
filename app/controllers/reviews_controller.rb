class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @show = Show.find(params[:show_id])
  end

  def create
    @review = Review.new(review_params)
    @show = Show.find(params[:show_id])
    @review.show = @show
    @review.save
    if @review.save
      redirect_to show_path(@show)
    else
      render :new
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])
    @show = Show.find(params[:show_id])
    @review.update(review_params)
    if @review.update(review_params)
      redirect_to show_path(@show)
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to shows_path
  end

  private

  def review_params
    params.require(:review).permit(:rating, :comment)
  end

end
