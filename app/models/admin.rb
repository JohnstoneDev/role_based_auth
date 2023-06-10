class Admin < ApplicationRecord
	has_secure_password
	validates :name, :email, :password, presence: true
	validates :name, :email, :password, uniqueness: true
	validates :password, length: { minimum: 8 }
end
