class MembersController < ApplicationController
  # Controller to test logged in vs logged out behaviour on an
  # endpoint that required authenticating

  before_action :authenticate_user!

  def show
    render json: { message: 'Yeppa you did it' }
  end
end
