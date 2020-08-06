class Api::V1::UsersController < ApplicationController
  def index
    users = User.all
    render json: UserSerializer.new(users).to_serialized_json, status: :accepted
  end

  def show
    user = User.find_by(id: params[:id])

    if user 
      render json: UserSerializer.new(user).to_serialized_json, status: :accepted
    else
      render json: "User not found. Check user ID and try again.", status: :not_found
    end
  end
end