class SessionsController < ApplicationController

  def new
    render 'pages/login'
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to blog_posts_url
    else
      redirect_to login_url, notice: 'Invalid email or password'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end