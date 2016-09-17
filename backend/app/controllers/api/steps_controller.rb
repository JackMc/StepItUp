class Api::StepsController < ApplicationController
  before_action :authenticate_api_user!

  def step_update
    current_user.steps += step_params.count
  end
  def reset_steps
    current_user.steps = 0
  end


  private
  def step_params
    params.require(:step).permit(:count)
  end

end
