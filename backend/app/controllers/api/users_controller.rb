class Api::UsersController < ApplicationController
before_action :authenticate_api_user!
  def friends

    @friends = current_user.friends.all
    render json: {friends:@friends}

  end
end
