class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  def current_user
    request_token = headers['Authorization'] || env['HTTP_AUTHORIZATION']
    return User.new unless request_token
  
    request_token = request_token.split(' ').last
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
