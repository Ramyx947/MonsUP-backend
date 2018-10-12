class Accommodation < ApplicationRecord
  belongs_to :day
  has_one :trip, through: :day
end
