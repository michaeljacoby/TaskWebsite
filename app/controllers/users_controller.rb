class UsersController < ApplicationController

  def new
    @user = User.new
  end

  # Creates basic user and redirects them to the correct route.
  def create
    @user = User.new(params[:user])
      if @user.save
        session[:user_id] = @user.id
        redirect_to main_dashboard_url, :notice => "Thank you for signing up!"
      else
        redirect_to root_path
      end
  end

  # updates the user information and redirects them to a desirable url.
  def update
    @user = User.find(params[:id])
      if @user.update_attributes(params[:user])
        if current_user.AdminScreen == true
          redirect_to admin_dashboard_url
        else     
          redirect_to root_url
        end
      end
  end

end
