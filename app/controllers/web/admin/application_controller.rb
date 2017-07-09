class Web::Admin::ApplicationController < Web::ApplicationController
  before_action :check_admin?

  layout "admin"

  private

  def check_admin?
    redirect_to root_path, alert: "Please log in with administration permissions" unless current_user.admin?
  end
end
