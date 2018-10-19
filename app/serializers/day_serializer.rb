class DaySerializer < ActiveModel::Serializer
  attributes :id, :title, :start_point, :end_point, :distance, :notes, :accommodation_type, :name, :address, :trip_id
end
