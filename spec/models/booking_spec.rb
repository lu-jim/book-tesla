require 'rails_helper'

RSpec.describe Booking, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:car) }
  # Validation tests
  # ensure columns date and city are present before saving
  it { should validate_presence_of(:date, :city) }
end
