class AccountsController < ApplicationController
  def login_create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      @errors = ["Username or password is incorrect"]
      render 'login'
    end
  end

  def logout
    session.clear
    redirect_to root_path
  end
end
