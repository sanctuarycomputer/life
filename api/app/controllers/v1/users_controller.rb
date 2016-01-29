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

  end
end
