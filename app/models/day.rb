class Day < ApplicationRecord
  belongs_to :trip

  def start_date
        self.start_time.strftime("%Y:%m:%d","YYYY-MM-DD") if self.start_time
    end 

    def end_date
        self.end_time.strftime("%Y:%m:%d","YYYY-MM-DD") if self.start_time
    end 
    
end
