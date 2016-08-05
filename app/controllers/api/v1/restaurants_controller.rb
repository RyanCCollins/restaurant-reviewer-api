class Api::V1::RestaurantsController < ApplicationController
  respond_to :json

  def show
    @restaurant = Restaurant.find(params[:id])
    respond_with @restaurant, serializer: RestaurantsSerializer
  end

  def index
    @restaurants = Restaurant.all
    respond_with @restaurants, serializer: RestaurantsSerializer
  end
end
