class ApplicationController < ActionController::API
    include ActionController::Cookies

    def index
        render json: { message: "Sample application with Role based Auth & ActionMailer functionality"}
    end

end
