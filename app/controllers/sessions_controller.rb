class SessionsController < ApplicationController

  skip_before_action :require_login, only: [:new,:create]
  def create
  user = login(params[:email], params[:password], params[:remember_me])
  if user
    redirect_back_or_to root_url, :notice => "Logged in!"
  else
   flash.now[:error] = 'Invalid email/password combination'
      render 'new'
  end
end

def index
  redirect_to root_url
end

def destroy
  logout
  redirect_to root_url, :notice => "Logged out!"
end
end
