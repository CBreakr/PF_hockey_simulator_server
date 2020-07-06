class Conference < ApplicationRecord
    belongs_to :league
    has_many :divisions
    has_many :teams, through: :division

    def fill_in_conference(division_names, city_names, team_names, teams_per_division)
        division_names.each do |div|
            division = Division.create(name: division_names.pop)
            self.divisions << division
            teams_per_division.times do
                # create a team within this division
                team = Team.create(name: team_names.pop, city: city_names.pop)
                division.teams << team
            end
        end
    end

end
