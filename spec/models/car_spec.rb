require 'rails_helper'

RSpec.describe Car, type: :model do
  it { should have_many(:bookings).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:model) }
end
