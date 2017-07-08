class User < ApplicationRecord
  has_many :groups_users, dependent: :destroy
  has_many :groups, through: :groups_users
  has_many :education_program_students, as: :student, dependent: :destroy
  has_many :education_programs, through: :education_program_students

  has_secure_password

  def short_name
    "#{last_name} #{first_name[0]}."
  end
end
