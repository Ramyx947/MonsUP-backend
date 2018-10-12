class Api::V1::AccommodationController < ApplicationController
  def show
     @accommodation = Accommodation.find(params[:id])
      render json: @accommodation
  end

  def create
    @accommodation = Accommodation.new(
    name: params[:name],
    user_id: params[:user_id])
    if @accommodation.save
      render json: @accommodation
    else
      render json: @accommodation.errors
    end
  end

  def index
    @accommodations = Accommodation.all
    render json: @accommodations
  end
  
  def update
    @accommodation = Accommodation(params[:id])
    @accommodation.update(
      accommodation_type: params[:accommodation_type],
      name: params[:name],
      address: params[:address],
      nights: params[:nights]
    )
    render json: @accommodation
  end
end
