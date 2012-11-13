class AdminToolsController < ApplicationController
  before_filter :require_admin_login
  def UserView
	@all_users = User.all
  end

def update
   @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
     redirect_to admin_dashboard_url
    else
     redirect_to edit_path
    end
end


def show

end


  def UserEdit
  end
end
