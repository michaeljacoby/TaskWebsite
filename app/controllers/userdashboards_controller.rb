class UserdashboardsController < ApplicationController
  def show
	render :main
  end

  def subdomainshow
   

  end

  def index

  end

  def create
    @message = message.new(params[:message])
     if @message.save
       redirect_to root_url, :notice => "Message sent!"
     else
       redirect_to root_url
     end

  end
end
