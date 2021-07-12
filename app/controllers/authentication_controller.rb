class AuthenticationController < ApplicationController
  skip_before_action :authenticate_request, only: [:login]
  def login
    command = AuthenticateUser.call(params[:email], params[:password])
    user = User.find_by(email: params[:email])
    if command.success?
      render json: { user: user, jwt: command.result, success: "welcome back #{user.name}" }
    else
      render json: { error: command.errors }, status: :unauthorized
    end
  end

  def auto_login
    if @current_user
      render json: @current_user
    else
      render json: { errors: 'No User Logged In' }
    end
  end

  def user_is_authed
    render json: { message: 'You are authorized' }
  end
end
