class Division < ApplicationRecord
    belongs_to :conference
    has_many :teams

    def full_display
        # here I want to get all conferences, teams, cities
        return {
            name: self.name,
            teams: self.teams.map {|t| t.full_display}
        }
    end

end
