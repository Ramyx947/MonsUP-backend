class AccommodationSerializer < ActiveModel::Serializer
  attributes :id, :accommodation_type, :name, :address, :nights
end
