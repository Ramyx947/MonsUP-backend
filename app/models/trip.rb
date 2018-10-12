class Trip < ApplicationRecord
  belongs_to :user
  has_many :days
  has_one :physical_rating
end
