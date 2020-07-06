class LeaguesController < ApplicationController

    def index
        render json: League.all, except: [:created_at, :updated_at]
    end

    def show
        league = League.find(params[:id])
        render json: league.full_display
    end

    def create
        league = League.create

        league.name = params[:name]
        league.salary_cap = params[:salary_cap]
        league.average_cap_percentage_increase = params[:average_cap_percentage_increase]
        league.cap_increase_chance = params[:cap_increase_chance]
        league.playoff_teams = params[:playoff_teams]
        
        league.fill_in_league(
            params[:has_conferences], 
            params[:divisions_per_conference], 
            params[:teams_per_division], 
            params[:playoff_teams])
    end

end
