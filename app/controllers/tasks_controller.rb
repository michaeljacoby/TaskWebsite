class TasksController < ApplicationController

  def newtask
    @task = Task.new
  end

  def create
    @user = current_user
    @task = Task.new(params[:task])

      if @task.save
        
        @task.update_column(:createdbyuser , @current_user)
        redirect_to main_dashboard_url
      else
        redirect_to root_url
      end
  end
end
