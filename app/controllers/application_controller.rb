class ApplicationController < ActionController::API
  before_action :authenticate_request
  attr_reader :current_user

  private

  def authenticate_request
    @current_user = AuthorizeApiRequest.call(request.headers).result
    render json: { error: 'Not Authenticated' }, status: 401 unless @current_user
  end

  def authorize_request
    user = User.find(params[:user_id])
    render json: { error: 'Forbidden' }, status: 403 if @current_user != user
  end

  def logged_in?
    return true if @current_user

    false
  end

  def require_login
    render json: { message: 'Please Login' }, status: :unauthorized unless logged_in?
  end
end
