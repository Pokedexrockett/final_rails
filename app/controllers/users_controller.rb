class UsersController < ApplicationController

  skip_before_action :redirect_if_not_logged_in, only: [:new, :create]
  
    def new
    end
    
      def create
        @user = User.create(user_params)
        if user.valid?
          session[:user_id] = user.id
          redirect_to user_path(user)
        else
          render :new
        end
      end
    
      def show
        redirect_if_not_logged_in
        @user = User.find_by(id: params[:id]) 
        redirect_to '/' if !@user      
      end

    def user_params
        params.require(:attraction).permit(:user_name, :email, :pasword)
      end
end
