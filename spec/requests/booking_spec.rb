require 'rails_helper'

RSpec.describe 'Bookings', type: :request do
  let!(:user) { create(:user) }
  let!(:car) { create(:car) }
  let!(:bookings) { create_list(:booking, 5, user_id: user.id, car_id: car.id) }
  let(:booking) { bookings.first }

  # Test suite for bookings#index
  describe 'GET /v1/bookings' do
    # make HTTP get request before each example
    before { get '/v1/bookings' }

    it 'returns bookings' do
      expect(json).not_to be_empty
      expect(json.size).to eq(5)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  context 'when the record exists' do
    it 'returns the booking' do
      expect(json).not_to be_empty
      expect(json['id']).to eq(booking_id)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  context 'when the record does not exist' do
    let(:booking_id) { 100 }

    it 'returns status code 404' do
      expect(response).to have_http_status(404)
    end

    it 'returns a not found message' do
      expect(JSON.parse(response.body)['message']).to match(/Couldn't find Car with 'id'=100/)
    end
  end
end
