class Test < ApplicationRecord
  include EducationProgramAssignmentable

  has_many :education_materials, as: :material, dependent: :destroy
end
