class ProfilesController < ApplicationController

	def create
		@team = Profile.new(team_params)
		if @team.save
			redirect_to profiles_path
		else
			redirect_to teams_path
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

	def team_params
		params.require(:team).permit(:team, :team_id, :flag, :founded, :moments)
	end

end
