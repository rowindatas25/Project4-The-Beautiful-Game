class ProfilesController < ApplicationController

	def create

		@profile = Profile.new(profile_params)
		if @profile.save
			redirect_to profiles_path
		else
			redirect_to team_path
		end
	end


	def index
		@user = @current_user.id
		@profiles = Profile.where(user_id: @user)
	end


	def show
		@user = @current_user.id
		@profile = Profile.where( user_id: @user, id: params[:id])
	end

	def edit
		@team = Profile.find(params[:id])
	end


	def destroy
		@team = Profile.find(params[:id])
		@team.destroy
		redirect_to profiles_path
	end

	private

	def profile_params
		params.require(:profile).permit(:team, :flag, :founded, :moment_title, :moments, :user_id)
	end

end
