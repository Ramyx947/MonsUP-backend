class Api::V1::TripsController < ApplicationController
  
  def show
    trip = Trip.find(params[:id])
    render json: {
      trip_details: trip,
      hikers: trip.trip_all_hikers
    }
  end


  def days
    trip = Trip.find(params[:id])
      render json: trip.days.map{|day|
        {
          id: day.id,
          date: day.date,
          accomodation: day.daily_accommodation,
          notes: day.notes
          
        }
  }
end
  def create
    @trip = Trip.new(
      user_id: params[:user_id],
      title: params[:title],
      start_date: params[:start_date],
      end_date: params[:end_date],
      number_days: params[:number_days],
      country: params[:country],
      city: params[:city],
      category: params[:category]
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
  
end
