class Api::V1::PhysicalRatingsController < ApplicationController
  
  
  def show
    @physical_rating = PhysicalRating.find(params[:id])
    render json: @physical_rating
  end

  def create
    @physical_rating = PhysicalRating.new(
      difficulty: params[:difficulty]
      trip_id: params[trip_id]
    )
    if @physical_rating.save
      render json @physical_rating
    else
      render json: @physical_rating.errors
    end
  end

  def index
    @physical_rating = PhysicalRating.all
    render json: @physical_rating
  end

  def update
    @physical_rating = PhysicalRating(params[:id])
    @physical_rating.update( difficulty: params[:difficulty])
     render json: @physical_rating
  end
end
