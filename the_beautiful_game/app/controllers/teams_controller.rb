class TeamsController < ApplicationController
	before_action :require_user
	

		
	
	
	def index
		@teams = Team.all
		url = "http://soccer.sportsopendata.net/v1/leagues/serie-a/seasons/17-18/teams"
		response = HTTParty.get(url)
		data = JSON.parse(response.body)
		all_teams = data["data"]["teams"]
		@soccer_data= all_teams.map do |teams|
			@italy_data = Team.create(team: teams["name"],
				flag: teams["flag"],
				founded: teams["team_foundation"],
				moments: teams["moments"])

			{
				name: teams["name"],
				flag: teams["flag"],
				founded: teams["team_foundation"],
			}

		end

		@teams = Team.all	
		url_prem = "http://soccer.sportsopendata.net/v1/leagues/premier-league/seasons/17-18/teams"
		response_prem = HTTParty.get(url_prem)
		data_prem = JSON.parse(response_prem.body)
		all_teams_prem = data_prem["data"]["teams"]
		@soccer_data_prem = all_teams_prem.map do |teams_prem|
			@england_data = Team.create(team: teams_prem["name"],
				flag: teams_prem["flag"],
				founded: teams_prem["team_foundation"],
				moments: teams_prem["moments"])
			{
				prem_name: teams_prem["name"],
				prem_flag: teams_prem["flag"],
				prem_founded: teams_prem["team_foundation"],
			}
		end


		@teams = Team.all	
		url_ligue = "http://soccer.sportsopendata.net/v1/leagues/ligue1/seasons/17-18/teams"
		response_ligue = HTTParty.get(url_ligue)
		data_ligue = JSON.parse(response_ligue.body)
		all_teams_ligue = data_ligue["data"]["teams"]

		@soccer_data_ligue = all_teams_ligue.map do |teams_ligue|
			@france_data = Team.create(team: teams_ligue["name"],
				flag: teams_ligue["flag"],
				founded: teams_ligue["team_foundation"],
				moments: teams_ligue["moments"])
			{
				ligue_name: teams_ligue["name"],
				ligue_flag: teams_ligue["flag"],
				ligue_founded: teams_ligue["team_foundation"],
			}
		end

		@teams = Team.all	
		url_bund = "http://soccer.sportsopendata.net/v1/leagues/bundesliga/seasons/17-18/teams"
		response_bund = HTTParty.get(url_bund)
		data_bund = JSON.parse(response_bund.body)
		all_teams_bund = data_bund["data"]["teams"]
		@soccer_data_bund = all_teams_bund.map do |teams_bund|
			@germany_data = Team.create(team: teams_bund["name"],
				flag: teams_bund["flag"],
				founded: teams_bund["team_foundation"],
				moments: teams_bund["moments"])
			{
				bund_name: teams_bund["name"],
				bund_flag: teams_bund["flag"],
				bund_founded: teams_bund["team_foundation"],
			}
		end

		@teams = Team.all	
		url_liga = "http://soccer.sportsopendata.net/v1/leagues/liga/seasons/17-18/teams"
		response_liga = HTTParty.get(url_liga)
		data_liga = JSON.parse(response_liga.body)
		all_teams_liga = data_liga["data"]["teams"]
		@soccer_data_liga = all_teams_liga.map do |teams_liga|
			@spain_data = Team.create(team: teams_liga["name"],
				flag: teams_liga["flag"],
				founded: teams_liga["team_foundation"],
				moments: teams_liga["moments"])
			{
				liga_name: teams_liga["name"],
				liga_flag: teams_liga["flag"],
				liga_founded: teams_liga["team_foundation"],
			}
		end

	

	end

	def show 
		@team = Team.find(params[:id])
	end

	def new
		@team = Team.new
	end


	def create
		@team = Team.new(team_params)

		if @team.save
			redirect_to teams_path
		else
			render :action => users_show_path
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
		params.require(:team).permit(:team, :team_id, :flag, :founded, :moments)
	end

	def set_team
		@team = Team.find(params[:id])
	end

end
