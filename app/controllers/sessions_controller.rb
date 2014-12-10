class SessionsController < ApplicationController
  def create
    # login using a username and password
    user = login(params[:username]), params[:password], params[:remember_me]
    if user
      redirect_back_or_to root_url, :notice => 'Logged in!'
    else
      flash.now.alert = 'Username or Password was invalid'
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
end
