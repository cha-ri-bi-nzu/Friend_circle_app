class User < ApplicationRecord
  before_validation { email.downcase! }
  validates :name, presence: {message: "空白以外の文字を入力して下さい(>_<)"}, length: { maximum: 30 }
  validates :email, presence: {message: "空白以外の文字を入力して下さい(>_<)"}, length: { maximum: 255}
  validates :password, length: { minimum: 6 }
    
  has_secure_password
  has_many :pictures
end
