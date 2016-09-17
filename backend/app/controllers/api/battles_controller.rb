class Api::BattlesController < ApplicationController
  #before_action :authenticate_api_user!

  def create
    @battle = Battle.new(battle_params)
    @battle.save
  end

  def show
    @battle = Battle.find(params[:id])
    @participants = @battle.users.all


    @category = @battle.category
    @info = @battle.info

    render json: {

        participants: @participants,
        category: @category,
        info: @info

      }
  end

  def join
    #@battle = Battle.find(params[:id])
    #@user = current_api_user
  end

  def destroy
    @battle = Battle.find(params[:id])
    @battle.destroy
  end

  private

  def battle_params
    params.require(:battle).permit(:participants, :category, :info)
  end



end
