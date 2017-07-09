class Web::Account::EducationProgramsController < Web::Account::ApplicationController
  before_action :set_education_program, only: [:show]

  def index
    respond_with(@education_programs = current_user.education_programs)
  end

  def show
  end

  private

  def set_education_program
    @education_program = EducationProgram.find(params[:id])
  end
end

