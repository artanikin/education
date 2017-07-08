class EducationProgramAssignment < ApplicationRecord
  belongs_to :education_program
  belongs_to :assignment, polymorphic: true
end
