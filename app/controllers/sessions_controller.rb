class SessionsController < ApplicationController

  def new
    render 'pages/login'
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to statistic_blog_url
    else
      flash[:danger] = "Invalid email or password"
      redirect_to login_url
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end