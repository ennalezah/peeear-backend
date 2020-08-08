class Project < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: :user_id
  
  has_many :comments
  has_many :users, through: :comments
end
