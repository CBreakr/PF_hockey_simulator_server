class Season < ApplicationRecord
    belongs_to :league
    has_many :player_seasons
    has_many :playoff_series
    has_many :games

    def champion

    end
end
