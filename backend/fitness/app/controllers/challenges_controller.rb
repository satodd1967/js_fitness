class ChallengesController < ApplicationController
  before_action :set_challenge, only: [:show, :update, :destroy]

  # GET /challenges
  def index
    @challenges = Challenge.all

    render json: @challenges
  end

  # GET /challenges/1
  def show
    render json: @challenge
  end

  # POST /challenges
  def create
    @challenge = Challenge.new(challenge_params)

    if @challenge.save
      render json: @challenge, status: :created, location: @challenge
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /challenges/1
  def update
    if @challenge.update(challenge_params)
      render json: @challenge
    else
      render json: @challenge.errors, status: :unprocessable_entity
    end
  end

  # DELETE /challenges/1
  def destroy
    @challenge.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_challenge
      @challenge = Challenge.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def challenge_params
      params.require(:challenge).permit(:name, :description, :start_datee, :duration, :end_date, :active_calorie_goal, :points_worked_out, :points_tracked_food, :point_met_calorie_goal, :points_maintain_weight, :points_maintain_body_fat, :points_met_active_calorie_goal, :user_id)
    end
end
