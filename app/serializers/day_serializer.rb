class DaySerializer < ActiveModel::Serializer
  attributes :title, :start_point, :end_point, :distance, :notes, :trip_id
end
