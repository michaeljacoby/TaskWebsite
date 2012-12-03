class GeneralController < ApplicationController


  # Creates a session for the user and remembers it.
  def create_session
    user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_url, :notice => "logged in!"
      else
        redirect_to root_url, :notice => "Username or Password is invalid"
      end
  end

  # It will end the session of the user. Likely when they hit log out.
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "logged out!"
  end



  def Welcome
  end

  def Contact
  end

  def SignUp
  end

  def Login
  end

  def Show
  end
end
