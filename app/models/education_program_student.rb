class EducationProgramStudent < ApplicationRecord
  belongs_to :education_program
  belongs_to :student, polymorphic: true
end
