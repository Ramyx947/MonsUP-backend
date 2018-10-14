class TripSerializer < ActiveModel::Serializer
  attributes :title, :start_date, :end_date, :number_days, :country, :city, :category
end
