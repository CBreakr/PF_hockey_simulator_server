class Player < ApplicationRecord
    belongs_to :league
    belongs_to :team
    belongs_to :draft_pack
    belongs_to :draft_player
    has_many :player_seasons

    def draft_team

    end

    def seasonTotals
        
    end

    def careerTotals

    end

    def ageOneYear

    end

end
