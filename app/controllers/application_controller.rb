class ApplicationController < ActionController::Base
  protect_from_forgery


  private


   # Is the session expired? if so redirect to login.
   def session_has_ended
     redirect_to login_path, :notice => "You are currently not logged in"
   end  

   # Gets the current user thats loged into the website.
   def current_user
     @current_user ||= User.find(session[:user_id]) if session[:user_id]
     rescue ActiveRecord::RecordNotFound
   end

   # Makes sure someone is logged into the website.
   def signed_in?
     !current_user.nil?
   end

   # Checks to see if the current user is an admin.
   def admin?
     !current_user.AdminScreen?
   end

   # Combines the previous commands for valid user and admin rights.
   def admin_signed_in?
     !current_user.nil? && current_user.AdminScreen?
   end

   # redirects the user away from a page is they are not an admin.
   def require_admin_login
     unless admin_signed_in?
       redirect_to login_url
     end
   end

   # Not implemented, should gather all messages.
   def all_messages
     @all_messages = Messages.all
   end
  


   helper_method :current_user
   helper_method :signed_in?
   helper_method :admin?
   helper_method :admin_signed_in?
   helper_method :session_has_ended
  end
