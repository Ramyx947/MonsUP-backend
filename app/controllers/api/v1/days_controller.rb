class Api::V1::DaysController < ApplicationController
 
  def show
    trip = Trip.find(params[:id])
    day = Day.find_by(title: params[:title], trip_id: trip.id)

    render json: {
      id: day.id,
      title: day.title,
      start_point: day.start_point,
      end_point: day.end_point,
      distance: day.distance,
      notes: day.notes,
      accommodation_type: day.accommodation_type,
      name: day.name,
      address: day.address
    }
  end

  def create
  
  # day = Day.find_or_create_by(trip: trip, title: params[:title], start_point: params[:start_point], end_point: params[:end_point], distance: params[:distance], notes: params[:notes])
  trip = Trip.find(params[:trip_id])
  day = Day.new(
      trip_id: trip.id,
      title: params[:title],
      start_point: params[:start_point],
      end_point: params[:end_point],
      distance: params[:distance],
      accommodation_type: params[:accommodation_type],
      name: params[:name],
      address: params[:address]
    )
    if day.save
      render json: day
    else
      render json: day.errors
    end
  end

  def index
    days=Day.all
    render json: days
  end
  
  def update
    day = Day.find(params[:id])
    day.update(
      title: params[:title],
      start_point: params[:start_point],
      end_point: params[:end_point],
      distance: params[:distance],
      accommodation_type: params[:accommodation_type],
      name: params[:name],
      address: params[:address]
    )
     render json: day
  end
end
