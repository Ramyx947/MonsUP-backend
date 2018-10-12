class Day < ApplicationRecord
  belongs_to :trip
  has_one :accommodation
end
