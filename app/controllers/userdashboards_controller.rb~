class UserdashboardsController < ApplicationController

  # renders the main view.
  def show
    render :main
  end

  def index
  end

  def Task
    @all_users = User.all
  end


  # A feature that will be added soon.
  def create
    @message = message.new(params[:message])
      if @message.save
        redirect_to root_url, :notice => "Message sent!"
      else
        redirect_to root_url
      end
  end

end
