require 'swagger_helper'

RSpec.describe 'users/sessions', type: :request do
  path '/users/sign_in' do
    post('Create a new session') do
      tags 'How to login'
      parameter name: :email, in: :query, type: :string, description: 'Users can log in with their emails.\n Send an email as a parameter.\n If a user match with that email, the response will retrieve a **success message** and the **user id**. If the email doesn\'t match any user in the database, the response will retrieve an **error message**', required: false
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

  # path '/users/sign_out' do
  #   delete('delete session') do
  #     response(200, 'successful') do
  #       after do |example|
  #         example.metadata[:response][:content] = {
  #           'application/json' => {
  #             example: JSON.parse(response.body, symbolize_names: true)
  #           }
  #         }
  #       end
  #       run_test!
  #     end
  #   end
  # end
end
