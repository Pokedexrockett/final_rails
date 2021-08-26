module ApplicationHelper

  
  # def logged_in?
  #   !!current_user
  # end

  # def current_user
  #   @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  # end


  def render_nav_bar
        if logged_in?
          render partial: 'layouts/loggedin_links'
        else
          render partial: 'layouts/loggedout_links'
        end
    end
end