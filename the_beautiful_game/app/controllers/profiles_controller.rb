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
		@teams = Profile.all
	end


	def show
		@team = Profile.find(params[:id])
	end


	def destroy
		@team = Fight.find(params[:id])
		@team.destroy
		redirect_to teams_path
	end

	private

	def profile_params
		params.require(:profile).permit(:team, :flag, :founded, :moment_title, :moments)
	end

end
