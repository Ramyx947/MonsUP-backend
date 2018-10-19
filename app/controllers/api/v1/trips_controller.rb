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
    @trip = Trip.new(
      user: User.find(params[:user_id]),
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      number_days: params[:number_days],
      country: params[:country],
      city: params[:city],
      category: params[:category],
      difficulty: params[:difficulty]
    )
    if @trip.save
      render json: @trip
    else
      render json: @trip.errors
    end
  end

  def index
    @trips=Trip.all 
    render json: @trips
  end

  def update
    @trip = Trip(params[:id])
    @trip.update(
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      number_days: params[:number_days],
      country: params[:country],
      city: params[:city],
      category: params[:category]
    )
     render json: @trip
  end

  def show_days
    @trip = Trip.find(params[:id])
    render json: @trip.days
  end
  def show_ratings
    @trip = Trip.find(params[:id])
    render json: @trip.physical_ratings
  end
  
  
end
