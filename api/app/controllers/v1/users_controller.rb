module V1
  class UsersController < ApplicationController


    def show
      user_id = params[:id].to_i
      if current_user.id == user_id
        render json: User.find(user_id)
      else
        render json: { 
          errors: [
            {
              title: 'Permissions Error',
              detail: 'User does not have permission to view this record.'
            } 
          ] 
        }, status: 401
      end
    end

    def token
      begin
        user = User.find_by_email params[:identification]

        if user.authenticate(params[:password])
          render json: { token: user.token } 
        else
          render json: { 
            errors: [
              {
                title: 'Incorrect Password Error',
                detail: 'The password was incorrect.'
              } 
            ] 
          }, status: 401
        end
      rescue
        render json: { 
          errors: [
            {
              title: 'Not Found Error',
              detail: 'There is no user with that email.'
            } 
          ] 
        }, status: 404
      end
    end

  end
end
