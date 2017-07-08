class EducationProgram < ApplicationRecord
  has_many :education_program_students, dependent: :destroy
  has_many :users, through: :education_program_students, source: :student, source_type: "User"
  has_many :groups, through: :education_program_students, source: :student, source_type: "Group"
end
