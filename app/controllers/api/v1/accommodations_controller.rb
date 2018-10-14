class Api::V1::AccommodationController < ApplicationController
  def show
    day = Day.find(params[:id])
    accommodation = Accommodation.find_by(name: params[:name], day_id: day.id)
      render json: {
        id: accommodation.id,
        accommodation_type: accommodation.accommodation_type,
        name: accommodation.name,
        address: accommodation.address,
        nights: accommodation.nights
      }
  end
  # def show
    
  #   trip = Trip.find(params[:id])
  #   day = Day.find_by(title: params[:title], trip_id: trip.id)

  #   render json: {
  #     id: day.id,
  #     title: day.title,
  #     start_point: day.start_point,
  #     end_point: day.end_point,
  #     distance: day.distance,
  #     accommodation: day.accommodation,
  #     notes: day.notes
  #   }
  # end

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
