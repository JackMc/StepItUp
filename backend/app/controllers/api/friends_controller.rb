class Api::FriendsController < ApplicationController
before_action :authenticate_api_user!

  def add_friend
    @me = current_api_user
    @friend = User.find(friend_params)
    @me.friend_request(@friend)
  end

  def remove_friend
    @me = current_api_user
    @friend = User.find(friend_params)
    @me.remove_friend(@friend)
  end

  def accept_request
    @friend = User.find(friend_params)
    @me = current_api_user
    @me.accept_request(@friend)
  end

  def decline_request
    @friend = User.find(friend_params)
    @me = current_api_user
    @me.decline_request(@friend)
  end

  def show_friends
    @friends = current_api_user.friends.all
    render json: {friends:@friends}
  end

  private

  def friend_params
    params.require(:friend).permit(:id)
  end


end
