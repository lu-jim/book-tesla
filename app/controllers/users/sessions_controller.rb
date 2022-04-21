class Users::SessionsController < Devise::SessionsController
  respond_to :json
 
  # def create
  #   @session = User.find(user_params)
  #   json_response(@session.user_id)
  # end

  private

  def respond_with(user_id, _resource, _opts = {})
    render json: { message: 'You are logged in.', user_id: 1 }, status: :ok
  end

  def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
  end

  def log_out_success
    render json: { message: 'You are logged out.' }, status: :ok
  end

  def log_out_failure
    render json: { message: 'Hmm nothing happened.' }, status: :unauthorized
  end
end
