class Api::V1::ReviewsController < ApplicationController

  respond_to :json

  def index
    @reviews = Review.where(restaurant_id: params[:restaurant_id])
    respond_with @review, serializer: ReviewsSerializer
  end

  def create
    review = Review.new(review_params)
    if review.save
      render json: review, status: 201, location: [:api_v1, review]
    else
      render json: { errors: review.errors }, status: 422
    end
  end

  def destroy
    review = Review.find(params[:id])
    review.destroy
    head 204
  end

  def update
    review = current_user.reviews.find(params[:id])
    if review.update(review_params)
      render json: review, status: 200, location: [:api_v1, review]
    else
      render json: { errors: review.errors }, status: 422
    end
  end

  private

    def review_params
      params.require(:review).permit(:total_stars,
                                     :text,
                                     :restaurant_id,
                                     :person)
    end
end
