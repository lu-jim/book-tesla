require 'swagger_helper'

RSpec.describe 'v1/cars', type: :request do
  path '/v1/cars' do
    get('list cars') do
      tags 'Cars'
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

    post('create car') do
      tags 'Cars'
      parameter name: :model, in: :query, type: :string, description: 'Add the model of a car', required: true
      parameter name: :image_link, in: :query, type: :string, description: 'Add the link of an image', required: true
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

  path '/v1/cars/{id}' do
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'id'

    get('show car') do
      tags 'Cars'
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

    patch('update car') do
      tags 'Cars'
      parameter name: :model, in: :query, type: :string, description: 'Add the model of a car'
      parameter name: :image_link, in: :query, type: :string, description: 'Add the link of an image'
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

    put('update car') do
      tags 'Cars'
      parameter name: :model, in: :query, type: :string, description: 'Add the model of a car'
      parameter name: :image_link, in: :query, type: :string, description: 'Add the link of an image'
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

    delete('delete car') do
      tags 'Cars'
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
