require 'swagger_helper'

RSpec.describe 'v1/bookings', type: :request do

  path '/v1/bookings' do

    get('list bookings') do
      tags 'Bookings'
      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    post('create booking') do
      tags 'Bookings'
      parameter name: :car_id, in: :query, type: :integer, description: 'Add the id of a car', required: true
      parameter name: :user_id, in: :query, type: :integer, description: 'Add the id of an user', required: true
      parameter name: :date, in: :query, type: :string, description: 'Add the date of booking', required: true

      response(200, 'successful') do

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end

  path '/v1/bookings/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show booking') do
      tags 'Bookings'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    patch('update booking') do
      tags 'Bookings'
      parameter name: :car_id, in: :query, type: :integer, description: 'Add the id of a car'
      parameter name: :user_id, in: :query, type: :integer, description: 'Add the id of an user'
      parameter name: :date, in: :query, type: :string, description: 'Add the date of booking'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    put('update booking') do
      tags 'Bookings'
      parameter name: :car_id, in: :query, type: :integer, description: 'Add the id of a car'
      parameter name: :user_id, in: :query, type: :integer, description: 'Add the id of an user'
      parameter name: :date, in: :query, type: :string, description: 'Add the date of booking'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end

    delete('delete booking') do
      tags 'Bookings'
      response(200, 'successful') do
        let(:id) { '123' }

        after do |example|
          example.metadata[:response][:content] = {
            'application/json' => {
              example: JSON.parse(response.body, symbolize_names: true)
            }
          }
        end
        run_test!
      end
    end
  end
end
