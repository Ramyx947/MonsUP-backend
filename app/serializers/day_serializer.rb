class DaySerializer < ActiveModel::Serializer
  attributes :id, :title, :start_point, :end_point, :distance, :notes, :trip_id
end
