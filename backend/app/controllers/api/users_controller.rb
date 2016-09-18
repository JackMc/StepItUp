class Api::UsersController < ApplicationController
before_action :authenticate_api_user!


  def index
    def @user = Users.all
      render json: {email:@user.email,steps:@user.steps}
  end
end
