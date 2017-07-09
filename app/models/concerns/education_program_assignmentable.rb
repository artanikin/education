module EducationProgramAssignmentable
  extend ActiveSupport::Concern

  included do
    has_many :education_program_assignments, as: :assignment, dependent: :destroy
    has_many :education_programs, through: :education_program_assignments
  end
end
