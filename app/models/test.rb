class Test < ApplicationRecord
  include EducationProgramAssignmentable

  has_many :education_materials, as: :material, dependent: :destroy

  validates :title, :description, presence: true
end
