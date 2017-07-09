class User < ApplicationRecord
  include EducationProgramStudentable

  has_many :groups_users, dependent: :destroy
  has_many :groups, through: :groups_users

  has_secure_password

  def short_name
    "#{last_name} #{first_name[0]}."
  end
end
