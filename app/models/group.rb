class Group < ApplicationRecord
  has_many :groups_users, dependent: :destroy
  has_many :users, through: :groups_users
  has_many :education_program_students, as: :student, dependent: :destroy
  has_many :education_programs, through: :education_program_students
end
