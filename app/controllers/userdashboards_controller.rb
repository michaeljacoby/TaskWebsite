class UserdashboardsController < ApplicationController


  def show
    @all_tasks = Task.all
    rescue ActiveRecord::RecordNotFound
    render :main
  end

  def index
  end

  def main
    @all_tasks = Task.where(createdbyuser: session[:user_id])
    rescue ActiveRecord::RecordNotFound
    respond_to do |format|
        format.html
        format.json { render json: @all_tasks}
    end
  end

  def list_tasks
    @all_tasks = Task.all
  end


end
