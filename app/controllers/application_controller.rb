class ApplicationController < ActionController::API
  include ActionController::Cookies
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :record_invalid
  # before_action :authorize

  private
    # def current_user
    #   User.find_by_id(session[:user_id])
    # end
    def record_not_found(error)
        render json: {error: "Score not found"}, status: :not_found
    end
    def record_invalid(invalid)
      render json: {error: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
