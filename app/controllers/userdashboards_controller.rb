class UserdashboardsController < ApplicationController


  def show
   
  end

  def index
  end

  def ViewTasks
  

    @task_selected = Task.find(:all, :conditions => {:complete => 't'})

  end

  def update
    @task = Task.find(params[:id])
      if @task.update_attributes(params[:user])
        redirect_to admin_dashboard_url
      else
        redirect_to edit_path
      end
  end



  def main
   
  end

  def select_tasks
   @task_selected = Task.find(:all, :conditions => {:complete => 't'})
  end




end
