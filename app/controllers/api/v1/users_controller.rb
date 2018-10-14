class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
 end

  def show

    user = User.find(params[:id])
      render json: {
        user: user,
        trips: user.hiker_or_admin.map{|trip|
            {
              id: trip.id,
              title: trip.title,
              start_date: trip.start_date,
              end_date: trip.end_date,
              number_of_days: trip.number_of_days,
              country: trip.country,
              city: trip.city,
              category: trip.category
            } 
          }
        }
  end

  def create
      user = User.new(user_params)

      if user.valid?
        user.save
        render json: user
      else
        render json: user.errors
      end
    end

    def update 
      user = User.find(params[:id])
      user.update(user_params)
      if user.saverender json: user
      else 
        render json: user.errors
      end
    end


 def signin
    user = User.find_or_create_by(email: params[:email])
      render json: user
  end

  def validate
    user = current_user
    if user
      render json: {username: user.username, token: token}
    else
      render json: {error: 'Validation failed.'}, status: 400
    end
  end
  def show_trips
    @user = User.find(params[:id])
    render json: @user.trips
  end

private

  def user_params
    params.permint(:username, :email, :admin)
  end
end
