class Web::CoursesController < Web::ApplicationController
  before_action :set_course, only: [:edit, :update, :destroy]

  def index
    @courses = Course.all
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
    params.require(:course).permit(:title, :description)
  end

  def set_course
    @course = Course.find(params[:id])
  end
end
