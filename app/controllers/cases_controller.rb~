class CasesController < ApplicationController


  def show
    @cases = Case.all
  end

  def viewcase
    @cases = Case.find(:all, :conditions => {:createdbyuser => current_user})
  end

  def create

    @user = current_user
    @cases = Case.new(params[:case])
      if @cases.save
        
        @cases.update_column(:createdbyuser , @user)
    render "newcase"
      else
        redirect_to root_url
      end
  end

  def update
    @cases = Case.find(params[:id])
      if @cases.update_attributes(params[:case])
        redirect_to main_dashboard_url
      else
        redirect_to root_url
      end
  end

end
