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
      accommodations: day.accommodations.map{|accommodation| {
        id: accommodation.id,
        day_id: accommodation.day_id,
        accommodation_type: accommodation.accommodation_type
        name: accommodation.name,
        address: accommodation.address,
        nights: accommodation.nights
      }},
      notes: day.notes
    }
  end

  def create
  
  day = Day.find_or_create_by(trip: trip, title: params[:title], start_point: params[:start_point], end_point: params[:end_point], distance: params[:distance], notes: params[:notes])
  day = Day.find_or_create_by(
      trip_id: params[:trip_id],
      title: params[:title],
      start_point: params[:start_point],
      end_point: params[:end_point],
      distance: params[:distance],
      note: params[:note]
    )
    if @day.save
      render json: @day
    else
      render json: @day.errors
    end
  end

  def index
    @days=Day.all
    render json: @days
  end
  
  def update
    @day = Day(params[:id])
    @day.update(
      title: params[:title],
      start_point: params[:start_point],
      end_point: params[:end_point],
      distance: params[:distance],
      note: params[:note]
    )
     render json: @day
  end
end
