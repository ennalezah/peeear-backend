class Project < ApplicationRecord
  # belongs_to :owner, class_name: "User"
  # has_many :comments
  # has_many :users, through: :comments

  default_scope { order(created_at: :desc) }
end
