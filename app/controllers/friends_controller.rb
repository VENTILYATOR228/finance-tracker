class FriendsController < ApplicationController

  def destroy
    friend = User.find(params[:id])
    user_friend = Friendship.where(user_id: current_user.id, friend_id: friend.id).first
    user_friend.destroy
    flash[:notice] = "#{friend.first_name} was successfully removed from your friendlist"
    redirect_to friends_path
  end

end
