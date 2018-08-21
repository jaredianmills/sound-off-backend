class Api::V1::ScoresController < ApplicationController

  before_action :set_score, only: [:show]

  def index
    scores = Score.all
    render json: scores, status: 200
  end

  def create
    score = Score.create(score_params)
    render json: score, status: 201
  end

  def show
    render json: @score, status: 200
  end

  private
  def score_params
    params.permit(:total, :user_id)
  end

  def set_score
    @score = Score.find(params[:id])
  end

end
