class Group < ApplicationRecord
  include EducationProgramStudentable

  has_many :groups_users, dependent: :destroy
  has_many :users, through: :groups_users
end
