class ProfileController < ApplicationController
	
	# GET /users/1
	# GET /users/1.json
	def show
		@user = User.find(params[:id])
		@follower = current_user
		@friendship = current_user.friendships.build

	    respond_to do |format|
	      format.html # show.html.erb
	      format.json { render json: @user }
	    end
	end

	def create
		
	end
end
