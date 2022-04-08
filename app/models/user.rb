class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :cars, through: bookings, dependent: :destroy
end
