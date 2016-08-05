class Api::V1::RestaurantsController < ApplicationController
  respond_to :json

  def show
    @restaurant = Restaurant.find(params[:id])
    respond_with @restaurant, serializer: RestaurantsSerializer
  end

  def index
    @restaurants = Restaurant.all
    render json: {
      restaurants: ActiveModel::Serializer::CollectionSerializer.new(
        @restaurants,
        each_serializer: RestaurantSerializer,
        root: false)
    }
  end
end
