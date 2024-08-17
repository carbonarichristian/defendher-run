class UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    @suggested_friends = User.where.not(id: current_user.id)
    @new_friendship = Friendship.new
  end

  private

  def user_params
    params.require(:user).permit(:id, :photo)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
