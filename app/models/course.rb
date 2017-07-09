class Course < ApplicationRecord
  include EducationProgramAssignmentable

  has_many :education_materials, dependent: :destroy
  has_many :tests, through: :education_materials, source: :material, source_type: "Test"

  validates :title, :description, presence: true
end
