class Api::V1::RestaurantsController < ApplicationController
  respond_to :json

  def show
    respond_with Donation.find(params[:id])
  end

  def index
    respond_with Restaurant.all
  end
end
