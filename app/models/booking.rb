class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :task
  has_one :review
  
end
