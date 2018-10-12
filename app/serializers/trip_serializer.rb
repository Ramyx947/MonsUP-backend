class TripSerializer < ActiveModel::Serializer
  attributes :id, :title, :start_date, :end_date, :number_days, :country, :city, :category, :user_id
end
