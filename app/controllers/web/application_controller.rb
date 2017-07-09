class Web::ApplicationController < ApplicationController
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]).decorate if session[:user_id]
  end
end
