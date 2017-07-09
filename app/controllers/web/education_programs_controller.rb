class Web::EducationProgramsController < Web::ApplicationController
  before_action :set_education_program, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:new, :edit]
  before_action :set_groups, only: [:new, :edit]
  before_action :set_tests, only: [:new, :edit]
  before_action :set_cources, only: [:new, :edit]

  def index
    respond_with(@education_programs = EducationProgram.all)
  end

  def show
  end

  def new
    respond_with(@education_program = EducationProgram.new)
  end

  def create
    respond_with(@education_program = EducationProgram.create(education_program_params), location: -> { education_programs_path })
  end

  def edit
  end

  def update
    @education_program.update(education_program_params)
    respond_with(@education_program, location: -> { education_programs_path })
  end

  def destroy
    respond_with(@education_program.destroy, location: -> { education_programs_path })
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
    @users = User.all.decorate
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

