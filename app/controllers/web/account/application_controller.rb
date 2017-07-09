class Web::Account::ApplicationController < Web::ApplicationController
  before_action :check_signin?

  private

  def check_signin?
    redirect_to root_path, alert: "Please log in" unless current_user
  end
end
