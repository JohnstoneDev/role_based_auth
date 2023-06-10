class UsersController < ApplicationController
	def index
		users = User.all
		render json: users, status: :ok
	end

	def create
		user = User.create(create_params);
		render json: user, status: :created
	end

	private

	def create_params
		params.permit(:username, :email, :password, :password_confirmation);
	end
end
