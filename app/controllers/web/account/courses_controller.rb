class Web::Account::CoursesController < Web::Account::ApplicationController
  before_action :set_course, only: [:show]

  def index
    respond_with(@courses = current_user.courses)
  end

  def show
  end

  private

  def set_course
    @course = Course.find(params[:id])
  end
end
