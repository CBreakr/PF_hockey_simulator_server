class PlayerSeason < ApplicationRecord
    belongs_to :season
    belongs_to :team
    belongs_to :player
end
