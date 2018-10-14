class User < ApplicationRecord
  has_many :trips

#  validates :email, uniqueness: true
#  validates :email, uniqueness: {case_sensitive: false}

 def self.admin
  Users.all.select{|user| user.admin == true }
 end 


end
