class Web::Admin::ApplicationController < Web::ApplicationController
  authorize_resource

  layout "admin"
end
