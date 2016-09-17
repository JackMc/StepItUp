class Api::BattlesController < ApplicationController
  #before_action :authenticate_api_user!

  def create
    @battle = Battle.new()
    @battle.save
  end


  def show
    @battle = Battle.find(params[:id])
    @participants = @battle.users.all
    render json: {
        participants: @participants
      }
  end

  #def join
    #@battle = Battle.find(params[:id])
    #@user = current_api_user
  #end

  def destroy
    @battle = Battle.find(params[:id])
    @battle.destroy
  end




end
