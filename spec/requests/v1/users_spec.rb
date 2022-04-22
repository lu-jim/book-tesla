require 'swagger_helper'

RSpec.describe 'v1/users', type: :request do

  path '/v1/users' do

    get('list users') do
      tags 'Users'
      parameter name: :email, in: :query, type: :string, description: 'Send an email as a parameter.\n If a user match with that email, the response will retrieve a **success message** and the **user id**. If the email doesn\'t match any user in the database, the response will retrieve an **error message**', required: true
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

    post('Create an user') do
      tags 'Users'
      parameter name: :email, in: :query, type: :string, description: 'Add an email', required: true
      parameter name: :username, in: :query, type: :string, description: 'Add a username', required: true
      parameter name: :password, in: :query, type: :string, description: 'Add a password', required: true

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

  path '/v1/users/{id}' do
    
    # You'll want to customize the parameter types...
    parameter name: 'id', in: :path, type: :string, description: 'Add a valid id.', required: true

    get('show user') do
      tags 'Users'
      response(200, 'successful') do
        let(:id) { '1' }

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

    patch('Update user') do
      tags 'Users'
      parameter name: 'id', in: :path, type: :string, description: 'Change the email', required: true
      parameter name: :email, in: :query, type: :string, description: 'Change the email'
      parameter name: :username, in: :query, type: :string, description: 'Change the username'
      parameter name: :password, in: :query, type: :string, description: 'Change a password'
      response(200, 'successful') do
        let(:id) { '1' }

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

    put('Update user') do
      tags 'Users'
      parameter name: :email, in: :query, type: :string, description: 'Change the email'
      parameter name: :username, in: :query, type: :string, description: 'Change the username'
      parameter name: :password, in: :query, type: :string, description: 'Change a password'
      response(200, 'successful') do
        let(:id) { '1' }

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

    delete('delete user') do
      tags 'Users'
      response(200, 'successful') do
        let(:id) { '1' }

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
