class Test < ApplicationRecord
  has_many :education_materials, as: :material, dependent: :destroy
  has_many :education_program_assignments, as: :assignment, dependent: :destroy
  has_many :education_programs, through: :education_program_assignments
end
