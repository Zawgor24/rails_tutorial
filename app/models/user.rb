class User < ApplicationRecord
  validates_presence_of :name, :email
  validates :name, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: true

  validates :password, length: { minimum: 6 }

  has_secure_password
end
