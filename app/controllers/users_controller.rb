class UsersController < ApplicationController
    skip_before_action :authorize, only: [:create]

    def index
        render json: User.all
    end

    def create
        user = User.create!(user_params)
        session[:user_id] = user.id
        render json: user, status: :created
    end

    def show
        if current_user
            render json: current_user, status: :ok
        else
            render json: "No one is logged in",
            status: :unauthorized
        end
    end

    def update
        user = User.find(params[:id])
        user.update! (user_params)
        render json: user, status: :ok
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        head :no_content
    end

    private
        def user_params
            params.permit(:username, :email, :password)
        end

end
