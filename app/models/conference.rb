class Conference < ApplicationRecord
    belongs_to :league
    has_many :divisions
    has_many :teams, through: :division

    def full_display
        puts "conference full display"
        # here I want to get all conferences, teams, cities
        return {
            name: self.name,
            divisions: self.divisions.map {|d| d.full_display}
        }
    end

    def fill_in_conference(divisions_per_conference, division_names, city_names, team_names, teams_per_division)
        divisions_per_conference.times do
            division = Division.create(name: division_names.pop.name)
            self.divisions << division

            teams_per_division.times do
                # create a team within this division
                team = Team.create(name: team_names.pop.name, city: city_names.pop.name)
                division.teams << team
            end
        end
    end

end
