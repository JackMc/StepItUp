class Api::BattlesController < ApplicationController
  before_action :authenticate_api_user!
  def create
    @battle = Battle.new()
    @battle.save
  end
  def show
    @battle = Battle.find(params[:id])
    @participants = @battle.users
    render json: {data: {
        id: @battle,
        participants: @participants
      }}
  end

  #def join
  #  @user = current_api_user
  #end
  
  def destroy
    @battle = Battle.find(params[:id])
    @battle.destroy
  end




end
