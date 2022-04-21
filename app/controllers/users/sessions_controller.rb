class Users::SessionsController < Devise::SessionsController
  respond_to :json

  private

  def respond_with(_resource, _opts = {})
    email = params[:email]
    response = User.where(email: email)[0] || 'Email doesn\'t exist'
    if response.is_a? String then render json: { message: response }, status: :ok
    else
      render json: { message: 'You are logged in.', user_id: response.id }, status: :ok
    end
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
