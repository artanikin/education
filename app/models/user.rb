class User < ApplicationRecord
  has_many :groups_users, dependent: :destroy
  has_many :groups, through: :groups_users

  has_secure_password
end
