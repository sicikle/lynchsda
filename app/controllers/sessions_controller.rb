class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:email], params[:password], true)
    if user
      redirect_back_or_to root_path, notice: "Logged in!"
    else
      redirect_to root_path, alert: "Email or password was invalid."
    end
  end

  def destroy
    logout
    redirect_to root_path, notice: "Logged out!"
  end


  def google_auth
    auth_details = request.env['omniauth.auth']
    session[:email] = auth_details.info['email']
    redirect_to root_path
  end
end
