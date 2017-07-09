module EducationProgramStudentable
  extend ActiveSupport::Concern

  included do
    has_many :education_program_students, as: :student, dependent: :destroy
    has_many :education_programs, through: :education_program_students
    has_many :courses, through: :education_programs
    has_many :tests, through: :education_programs
  end
end
