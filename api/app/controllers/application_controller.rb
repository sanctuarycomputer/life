class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    request_token = headers['Authorization'] || env['HTTP_AUTHORIZATION']
    return User.new unless request_token

    begin
      user = User.find request_token.split('-').first
      if request_token.split('-').last == user.email
        user
      else
        User.new
      end
    rescue
      User.new
    end
  end
end
