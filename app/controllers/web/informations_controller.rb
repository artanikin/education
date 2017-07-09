class Web::InformationsController < Web::ApplicationController
  def index
    @courses = Course.all
    @tests = Test.all
  end
end
