class UsersController < ApplicationController
    def new
        @user = User.new
      end
    
      def create
        user = User.create(user_params)
        if user.valid?
          session[:user_id] = user.id
          redirect_to user_path(user)
        else
          render :new
        end
      end
    
      def show
        @user = User.find_by_id(params[:id])
      end

    def user_params
        params.require(:attraction).permit(:user_name, :email)
      end
end
