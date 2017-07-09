class Test < ApplicationRecord
  include EducationProgramable

  has_many :education_materials, as: :material, dependent: :destroy
end
