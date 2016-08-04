# User controller class for the api
class Api::V1::UsersController < ApplicationController
  respond_to :json

  # show :: None -> Json User
  def show
    respond_with User.find(params[:id])
  end

  # create :: None -> Json Error : User
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: 201, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  # update :: None -> Json Error : User
  def update
    user = current_user
    if user.update(user_params)
      render json: user, status: 200, location: [:api, user]
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  # destroy :: None -> Res 204
  def destroy
    user = User.find(params[:id])
    user.destroy
    head 204
  end

  # user_params - Allowable user parameters
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
