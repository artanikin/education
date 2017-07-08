class Web::EducationProgramsController < Web::ApplicationController
  before_action :set_education_program, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:new, :edit]
  before_action :set_groups, only: [:new, :edit]
  before_action :set_tests, only: [:new, :edit]
  before_action :set_cources, only: [:new, :edit]

  def index
    @education_programs = EducationProgram.all
  end

  def show
  end

  def new
    @education_program = EducationProgram.new
  end

  def create
    @education_program = EducationProgram.new(education_program_params)

    if @education_program.save
      redirect_to education_programs_path, notice: "Education Program was successfully created"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @education_program.update(education_program_params)
      redirect_to education_program_path, notice: "Education Program was successfully updated"
    else
      render :edit
    end
  end

  def destroy
    @education_program.destroy
    redirect_to education_programs_path, notice: "Education Program was successfully destroyed"
  end

  private

  def education_program_params
    params.require(:education_program)
      .permit(:title, :description, user_ids: [], group_ids: [], test_ids: [], course_ids: [])
  end

  def set_education_program
    @education_program = EducationProgram.find(params[:id])
  end

  def set_users
    @users = User.all
  end

  def set_groups
    @groups = Group.all
  end

  def set_tests
    @tests = Test.all
  end

  def set_cources
    @cources = Course.all
  end
end

