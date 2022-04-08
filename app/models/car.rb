class Car < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :users, through: bookings, dependent: :destroy

  validates :model, presence: true
end
