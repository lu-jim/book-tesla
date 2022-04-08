class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users

  validates :model, presence: true
end
