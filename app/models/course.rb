class Course < ApplicationRecord
  has_many :education_materials, dependent: :destroy
  has_many :tests, through: :education_materials, source: :material, source_type: "Test"
  has_many :education_program_assignments, as: :assignment, dependent: :destroy
  has_many :education_programs, through: :education_program_assignments
end
