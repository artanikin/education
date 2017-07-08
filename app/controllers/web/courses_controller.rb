class Web::CoursesController < Web::ApplicationController
  before_action :set_course, only: [:show, :edit, :update, :destroy]
  before_action :set_tests, only: [:new, :edit]

  def index
    @courses = Course.all
  end

  def show
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)

    if @course.save
      redirect_to courses_path, notice: "Course was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @course.update(course_params)
      redirect_to courses_path, notice: "Course was successfully created"
    else
      render :edit
    end
  end

  def destroy
    @course.destroy
    redirect_to courses_path, notice: "Course successfully deleted"
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
