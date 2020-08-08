class User < ApplicationRecord
  has_secure_password
  
  has_many :comments
  has_many :projects, through: :comments

  has_many :projects  
end
