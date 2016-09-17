class Api::UsersController < ApplicationController
  before_action :authenticate_api_user!
  def show_friends
    @friends = current_user.friends.all
  end
end
