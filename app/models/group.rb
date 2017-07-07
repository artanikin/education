class Group < ApplicationRecord
  has_many :groups_users, dependent: :destroy
  has_many :users, through: :groups_users

  def add_user(user)
    users << user
  end

  def remove_user(user)
    users.destroy(user)
  end
end
