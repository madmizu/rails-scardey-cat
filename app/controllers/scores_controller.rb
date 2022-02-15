class ScoresController < ApplicationController

    def index
        render json: Score.all
    end

    def create
        newScore = Score.create!(score_params)
        render json: newScore, status: :created
    end

    def show
        score = Score.find(params[:id])
        render json: score, status: :ok
    end

    private
        def score_params
            params.permit(:score, :user_id)
        end
end
