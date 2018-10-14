class Day < ApplicationRecord
  belongs_to :trip
  has_one :accommodation

  def start_date
        self.start_time.strftime("%Y:%m:%d","YYYY-MM-DD") if self.start_time
    end 

    def end_date
        self.end_time.strftime("%Y:%m:%d","YYYY-MM-DD") if self.start_time
    end 
    def daily_accommodation
        Accommodation.find_by(day_id: self.id)
    end
end
