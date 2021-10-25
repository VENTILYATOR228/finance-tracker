class FriendshipsController < ApplicationController

  def create
    
  end

  def destroy
    friendship = current_user.friendships.where(friend_id: params[:id]).first
    friendship.destroy
    flash[:notice] = "#{friend.full_name} was successfully removed from your friendlist"
    redirect_to friends_path
  end

end
