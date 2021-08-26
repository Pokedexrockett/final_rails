class SessionsController < ApplicationController
  skip_before_action :redirect_if_not_logged_in
  
    def home 
      # render layout: 'home'
    end 

  
  
    def new  
      #no new needed because not creating a new user
    end 

    def create 
    
      user = User.find_by(user_name: params[:user][:user_name])
      
      if user.try(:authenticate, params[:user][:password])
        session[:user_id] = user.id 
        redirect_to user_path(user)
      else
        flash[:error] = "Sorry, login info was incorrect. Please try again."
        redirect_to login_path
      end
     end

    def omniauth
      user = User.from_omniauth(auth)
      if user.valid? 
          session[:user_id] = user.id
          flash[:message] = "Successful Login!!"
          redirect_to user_path(user)
      else
         redirect_to '/'
      end
  
    end
  
      def destroy 
        session.clear  
        redirect_to '/'
      end 
    
      private
    
        def auth
          request.env['omniauth.auth']
        end
     
end