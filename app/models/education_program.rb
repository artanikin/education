class EducationProgram < ApplicationRecord
  has_many :education_program_students, dependent: :destroy
  has_many :users, through: :education_program_students, source: :student, source_type: "User"
  has_many :groups, through: :education_program_students, source: :student, source_type: "Group"

  has_many :education_program_assignments, dependent: :destroy
  has_many :tests, through: :education_program_assignments, source: :assignment, source_type: "Test"
  has_many :courses, through: :education_program_assignments, source: :assignment, source_type: "Course"

  validates :title, :description, presence: true
end
