class ApplicationController < ActionController::Base
  protect_from_forgery




  private

  def session_has_ended
   
  redirect_to login_path, :notice => "You are currently not logged in"
  
  end  

  def current_user
   @current_user ||= User.find(session[:user_id]) if session[:user_id]
   rescue ActiveRecord::RecordNotFound
  end

  def signed_in?
        !current_user.nil?
  end

  def admin?
        !current_user.AdminScreen?
  end

  def admin_signed_in?
        !current_user.nil? && current_user.AdminScreen?
  end


  def require_admin_login
   unless admin_signed_in?
    redirect_to login_url
   end
  end

  def all_messages

  @all_messages = Messages.all

  end
  


helper_method :current_user
helper_method :signed_in?
helper_method :admin?
helper_method :admin_signed_in?
helper_method :session_has_ended

end
