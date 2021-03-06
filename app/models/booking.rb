class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :car

  validates :date, presence: true
  validates :location, presence: true
end
