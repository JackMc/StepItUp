class Api::StepsController < ApplicationController

  before_action :authenticate_api_user!, :except => [:index]
  def create
    @step = Step.new(step_params)
    @step.save
  end
  def index
    @step = Step.where(created_at < Date.today && created_at >= Date.yesterday)
  end

  def destroy
    @battle = Battle.find(params[:id])
    @battle.destroy
  end

  private
  def step_params
    params.require(:step).permit(:count)
  end

end
