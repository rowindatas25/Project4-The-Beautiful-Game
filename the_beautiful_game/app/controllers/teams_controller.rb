class TeamsController < ApplicationController
	before_action :require_user

	

	def index
		@teams = Team.all
	end

	def show 
		@team = Team.find(params[:id])
		url = @team.youtube_id
		@team_url = url.split("/").last.split("=").last
	end


	def new
		@team = Team.new
	end


	def create
		@team = Team.new(team_params)

		if @team.save
			redirect_to teams_path
		else
			render :action => user_path
		end
	end


	def edit
		@team = Team.find(params[:id])
	end

	def update
		@team = Team.find(params[:id])

		if @team.update(team_params)
			redirect_to teams_path
		else
			render :action => :edit
		end
	end


	def destroy
		@team = Team.find(params[:id])
		@team.destroy
		redirect_to teams_url
	end

	private

	def team_params
		params.require(:team).permit(:team, :flag, :founded, :moment_title, :moments)
	end

	def set_team
		@team = Team.find(params[:id])
	end

end
