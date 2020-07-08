class LeaguesController < ApplicationController

    def index
        all = League.all
        puts "LEAGUES START" + all.count.to_s
        puts all
        puts "LEAGUES END"
        render json: all, except: [:created_at, :updated_at]
    end

    def show
        puts params[:id]
        league = League.find(params[:id])
        puts league.full_display
        render json: league.full_display
    end

    def create
        league = League.create

        puts params

        league.name = params[:name]
        league.salary_cap = params[:salary_cap].to_f
        league.average_cap_percentage_increase = params[:average_cap_percentage_increase].to_f
        league.cap_increase_chance = params[:cap_increase_chance].to_f
        league.playoff_teams = params[:playoff_teams].to_i
        league.year = Date.current.year

        puts league

        league.save
        
        league.fill_in_league(
            params[:has_conferences], 
            params[:divisions_per_conference].to_i, 
            params[:teams_per_division].to_i, 
            params[:playoff_teams].to_i)

        league.save
    end

end
