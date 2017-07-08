class EducationMaterial < ApplicationRecord
  belongs_to :course
  belongs_to :material, polymorphic: true
end
