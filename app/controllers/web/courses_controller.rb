class Web::CoursesController < Web::ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :set_tests, only: [:new, :edit]

  def index
    respond_with(@courses = Course.all)
  end

  def show
  end

  def new
    respond_with(@course = Course.new)
  end

  def create
    respond_with(@course = Course.create(course_params), location: -> { courses_path })
  end

  def edit
  end

  def update
    @course.update(course_params)
    respond_with(@course, location: -> { courses_path })
  end

  def destroy
    respond_with(@course.destroy)
  end

  private

  def course_params
    params.require(:course).permit(:title, :description, test_ids: [])
  end

  def set_course
    @course = Course.find(params[:id])
  end

  def set_tests
    @tests = Test.all
  end
end
