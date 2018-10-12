class Api::V1::DaysController < ApplicationController
 
  def show
    @day = Day.find(params[:id])
    render json: @day
  end

  def create
  @day = Day.new(
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
