class User < ApplicationRecord
  before_validation { email.downcase! }
  validates :name, presence: true
  validates :password, length: { minimum: 6 }
    
  has_secure_password
  has_many :pictures
end
