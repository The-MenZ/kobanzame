class SessionsController < ApplicationController
  skip_before_action :require_login
  before_action :check_logged_in

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      flash.now[:danger] = 'Invalid email/password conbination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  private
    def check_logged_in
      if logged_in?
        flash.notice = 'ログイン済みです'
        redirect_to root_path
      end
    end
end
