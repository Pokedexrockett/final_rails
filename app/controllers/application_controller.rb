class ApplicationController < ActionController::Base
    before_action :redirect_if_not_logged_in 
    helper_method :current_user, :logged_in?, :authorized_to_edit?
  
    private
  
  
    def logged_in?
      !!current_user
    end
  
    def current_user
      @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end
  
    def authorized_to_edit?(strain)
      strain.user == current_user
    end  
  
    def redirect_if_not_logged_in
      redirect_to login_path if !logged_in?
    end
  
  end