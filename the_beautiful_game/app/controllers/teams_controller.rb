class TeamsController < ApplicationController
	before_action :require_user
	
	
	def index
		@teams = Team.all
		render json: @teams
	end

	def show
		@team = Team.find(params[:id])
		render json: @team
	end

	def new
		
	end

	def create
		
	end

	def edit
		
	end

	def update
		
	end

	def destroy
		
	end

	private

	def team_params
		
	end

	def set_team
		
	end

end
