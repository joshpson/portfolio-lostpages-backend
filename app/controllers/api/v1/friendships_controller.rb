class Api::V1::FriendshipsController < ApplicationController

  def index
    @friendships = Friendship.all
    render json: @friendships
  end

  def create
    @friendship = Friendship.create(friendship_params)
    render json: @friendship, status: :accepted
  end

  def destroy
    Friendship.find_by(id: params[:id]).destroy
  end


  private

  def friendship_params
    params.permit(:friend_id, :user_id)
  end
end
