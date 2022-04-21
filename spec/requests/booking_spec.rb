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

  describe 'POST /v1/bookings' do
    # valid payload
    let(:valid_attributes) do
      { user_id: user.id, car_id: car.id, location: 'Los Angeles', date: DateTime.new(2022, 9, 1, 12, 0) }
    end

    context 'when the request is valid' do
      before { post '/v1/bookings', params: valid_attributes }

      it 'creates a booking' do
        expect(json['location']).to eq('Los Angeles')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/v1/bookings', params: { location: 'Bermuda' } }

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body)
          .to match(/Validation failed: User must exist, Car must exist, Date can't be blank/)
      end
    end
  end
  # Test suite for PUT /bookings/:id
  describe 'PUT /v1/bookings/:id' do
    let(:valid_attributes) { { location: 'Ottawa' } }

    context 'when the record exists' do
      before { put "/v1/bookings/#{booking.id}", params: valid_attributes }

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # Test suite for DELETE /bookings/:id
  describe 'DELETE /v1/bookings/:id' do
    before { delete "/v1/bookings/#{booking.id}" }

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
