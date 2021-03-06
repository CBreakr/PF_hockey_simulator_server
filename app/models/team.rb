class Team < ApplicationRecord
    belongs_to :division
    has_many :players
    has_many :draft_packs
    has_many :draft_players
    has_many :player_seasons

    def full_display
        # here I want to get all conferences, teams, cities
        return {
            name: self.name,
            city: self.city
        }
    end

    def games

    end

    def home_games

    end

    def away_games

    end

    def playoff_series

    end

end
