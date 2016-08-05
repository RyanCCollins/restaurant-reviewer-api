class Api::V1::RestaurantsController < ApplicationController
  respond_to :json

  def show
    @restaurant = Restaurant.find(params[:id])
    render json: {restaurant: @restaurant}
  end

  def index
    @restaurants = Restaurant.all
    render json: {restaurants: @restaurants}
  end
end
