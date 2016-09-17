class Api::BattlesController < ApplicationController
  def create
    @battle = Battle.new()
    @battle.save
  end
  def show
    @battle = Battle.find(params[:id])
    @participants = @battle.users
    render json: [@battle,@participants]
  end
  def destroy
  end


end
