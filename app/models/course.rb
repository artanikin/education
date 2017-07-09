class Course < ApplicationRecord
  include EducationProgramable

  has_many :education_materials, dependent: :destroy
  has_many :tests, through: :education_materials, source: :material, source_type: "Test"
end
