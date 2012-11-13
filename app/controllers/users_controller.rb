class UsersController < ApplicationController
  def new
	@user = User.new
  end

# The following code will create a basic user on the signup page. They will be given the default rights according to the model.

  def create
    @user = User.new(params[:user])
     if @user.save
       session[:user_id] = @user.id
       redirect_to main_dashboard_url, :notice => "Thank you for signing up!"
     else
       redirect_to login_path
     end
  end

# The following code will update the user information and redirect the user to a desirable url.
# If the user is an admin it should place the user back on the admin dashboard. This is solely for the Website's admin users and not the companies. The reason it can direct non-admin users away from the dashboard is it is currently possible for admins to de-admin themselves.

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
