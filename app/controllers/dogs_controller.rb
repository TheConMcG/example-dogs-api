class DogsController < ApplicationController

  def create
    dog = Dog.new(
      name: params[:name],
      age: params[:age],
      breed: params[:breed],
      user_id: current_user.id
    )
    if dog.save
      render json: dog
    else
      render json: {error_message: "User must be logged in to input new dogs"}
    end
  end
end