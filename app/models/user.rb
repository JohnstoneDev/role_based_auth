class User < ApplicationRecord
	has_secure_password
	validates :username, :email, :password, presence: true
	validates :username, :email, :password, uniqueness: true
	validates :password, length: { minimum: 8 }
end
