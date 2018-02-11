class LoginController < ApplicationController
  skip_before_action :require_login

  def index
    render html: "hello, world!"
  end
end
