class PlayoffSeries < ApplicationRecord
    belongs_to :conference
    belongs_to :season

    def home_team

    end

    def away_team

    end

    def winning_team

    end
    
end
