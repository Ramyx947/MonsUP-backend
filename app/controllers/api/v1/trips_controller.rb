class Api::V1::TripsController < ApplicationController
  
  def show
    trip = Trip.find(params[:id])
    render json: trip
  end


  def days
    trip = Trip.find(params[:id])
      render json: trip.days.map{|day|
        {
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
  }
end
  def create
    trip = Trip.new(
      user: User.find(params[:user_id]),
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      country: params[:country],
      city: params[:city],
      difficulty: params[:difficulty]
    )
    if trip.save
      render json: trip
    else
      render json: trip.errors
    end
  end

  def update
    trip = Trip.find(params[:id])
    trip.update(
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      country: params[:country],
      city: params[:city],
      difficulty: params[:difficulty]
    )
     render json: @trip
  end
  
  def index
    @trips=Trip.all 
    render json: @trips
  end

  def show_days
    @trip = Trip.find(params[:id])
    render json: @trip.days
  end

  def show_ratings
    @trip = Trip.find(params[:id])
    render json: @trip.physical_ratings
  end

  def delete
    trip = Trip.find(params[:id])
    trip.days.destroy_all
    trip.destroy
    render json: {message: "Trips was deleted"}
  end
 
end
