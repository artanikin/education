class Test < ApplicationRecord
  has_many :education_materials, as: :material, dependent: :destroy
end
