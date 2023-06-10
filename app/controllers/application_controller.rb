class ApplicationController < ActionController::API
    include ActionController::Cookies

    rescue_from ActiveRecord::RecordInvalid, with: :invalid_record
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index
        render json: { message: "Sample application with Role based Auth & ActionMailer functionality" }, status: :ok
    end


    private

    def not_found record
        render json: { error: record }, status: :not_found
    end

    def invalid_record invalid
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
