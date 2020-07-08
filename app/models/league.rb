class League < ApplicationRecord
    has_many :conferences
    has_many :seasons
    has_many :players
    has_many :draft_packs
    has_many :divisions, through: :conferences
    has_many :teams, through: :divisions

    def full_display
        # here I want to get all conferences, teams, cities
        return {
            name: self.name,
            conferences: self.conferences.map {|c| c.full_display}
        }
    end

    def fill_in_league(has_conferences, divisions_per_conference, teams_per_division, playoff_teams)
        num_conferences = has_conferences ? 2 : 1;
        if divisions_per_conference >= 2 && teams_per_division >= 2 then
            if num_conferences*divisions_per_conference <= 12
                if num_conferences*divisions_per_conference*teams_per_division <= 60 then
                    if divisions_per_conference*teams_per_division >= playoff_teams then
                        # we're good to go!

                        # hmm, all of these choices have to be made with respect to 
                        # previous choices, so we can't double-up

                        division_names = get_division_names_shuffled(num_conferences*divisions_per_conference)                        
                        team_names = get_team_names_shuffled(num_conferences*divisions_per_conference*teams_per_division)

                        if has_conferences then
                            # create both east and west
                            self.conferences << Conference.create(name:"Eastern", is_east: true)
                            self.conferences << Conference.create(name:"Western", is_east: false)

                            east_city_names = city_names = get_city_names_shuffled_by_rank(true, false, divisions_per_conference*teams_per_division)
                            west_city_names = city_names = get_city_names_shuffled_by_rank(false, true, divisions_per_conference*teams_per_division)

                            self.conferences[0].fill_in_conference(divisions_per_conference, division_names, east_city_names, team_names, teams_per_division)
                            self.conferences[1].fill_in_conference(divisions_per_conference, division_names, west_city_names, team_names, teams_per_division)
                        else
                            # create singular
                            city_names = get_city_names_shuffled_by_rank(false, false, divisions_per_conference*teams_per_division)
                            self.conferences << Conference.create(name:"Overall", is_east: false)

                            self.conferences[0].fill_in_conference(divisions_per_conference, division_names, city_names, team_names, teams_per_division)
                        end
                    end
                end
            end
        end
    end

    private

    def get_division_names_shuffled(num_divisions)
        return SampleDivisionName.all.shuffle.first(num_divisions)
    end

    def get_team_names_shuffled(num_teams)
        return SampleTeamName.all.shuffle.first(num_teams)
    end

    def get_city_names_shuffled_by_rank(east_only, west_only, cities_per_conference)

        cities = nil
        first_rank = nil
        second_rank = nil
        third_rank = nil

        # fill in the ranks
        if east_only then
            first_rank = SampleCityName.where({rank: 1, is_east: true})
            second_rank = SampleCityName.where({rank: 2, is_east: true})
            third_rank = SampleCityName.where({rank: 3, is_east: true})
        elsif west_only then
            first_rank = SampleCityName.where({rank: 1, is_east: false})
            second_rank = SampleCityName.where({rank: 2, is_east: false})
            third_rank = SampleCityName.where({rank: 3, is_east: false})
        else
            first_rank = SampleCityName.where({rank: 1})
            second_rank = SampleCityName.where({rank: 2})
            third_rank = SampleCityName.where({rank: 3})
        end

        # use the ranks
        if cities_per_conference <= first_rank.length then
            cities = first_rank.shuffle.first(cities_per_conference)
        elsif cities_per_conference <= first_rank.length + second_rank.length then
            second_cities_count = cities_per_conference - first_rank.length
            cities = first_rank + second_rank.shuffle.first(second_cities_count)
        else
            third_cities_count = cities_per_conference - (first_rank.length + second_rank.length)
            cities = first_rank + second_rank + third_rank.shuffle.first(third_cities_count)
        end

        # return
        return cities.shuffle
    end

end
