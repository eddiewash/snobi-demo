class FriendshipController < ApplicationController

def create
    # friendship = Friendship.new(params[:user][current_user])
    # @friendship.follower_id = current_user.id
    # @friendship.user_id = @user.id
     # @friendship = current_user.friendships.build
    Friendship.create(:user_id => @user.id, :follower_id => :current_user.id)

    respond_to do |format|
      if @friendship.save
        format.html { redirect_to @user, notice: 'User followed!' }
        format.json { render json: @friendship, status: :created, location: @friendship }
      else
        format.html { render action: "new" }
        format.json { render json: @friendship.errors, status: :unprocessable_entity }
      end
    end
end # create

def destroy
  Friendship.find(paramas[:friendship.id]).destroy
end

end