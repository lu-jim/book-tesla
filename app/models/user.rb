class User < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :cars

  validates :username, presence: true
end
