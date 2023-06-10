class AdminsController < ApplicationController
	def index
		admins = Admin.all
		render json: admin, status: :ok
	end

	def create
		admin = Admin.create!(create_params)
		render json: admin, status: :created
	end

	private

	def create_params
		params.permit(:name, :email, :password, :password_confirmation)
	end
end
