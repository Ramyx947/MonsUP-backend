class Trip < ApplicationRecord
  belongs_to :user
  has_many :days



  def trip_all_hikers
    trips_all_users = self.user_trip.map{|user_trip| Users.all.find(user_trip.user_id)}
    trips_all_users.select{|user| user.admin === false}
  end
# calculate how many days a trip is
  def total_trip_days
    start_date = self.start_date
    end_date= self.end_date
  (end_date - start_date).to_i
  end
end

