class User < ApplicationRecord
  has_secure_password

  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true
end
