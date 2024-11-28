class Restaurant < ApplicationRecord
  belongs_to :user
  has_many :bookings

  enum category: { 
    pub: 0,
    restaurant: 1,
    bar: 2
  }
end
