class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  include SessionsHelper
  def hello
    render html: "hello, world!"
  end

  private
    def require_login
      if !logged_in?
        session[:return_to_url] = request.url if request.get?
        redirect_to login_path
      end
    end

    def set_transaction
      ActiveRecord::Base.transaction do
        yield
      end
    end
end
