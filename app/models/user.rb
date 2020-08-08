class User < ApplicationRecord
  has_secure_password
  
  has_many :owned_projects, class_name: "Project", foreign_key: 'owner_id'

  has_many :comments
  has_many :projects, through: :comments

  # has_many :owned_projects, foreignclass: "Project"
end
