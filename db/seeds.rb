# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative "city_seeds"
require_relative "team_seeds"
require_relative "first_name_seeds"
require_relative "last_name_seeds"
require_relative "division_name_seeds"

League.delete_all
Conference.delete_all
Division.delete_all
DraftPack.delete_all
GameEvent.delete_all
Game.delete_all
PlayerSeason.delete_all
Player.delete_all
PlayoffSeries.delete_all
Season.delete_all
Team.delete_all

SampleDivisionName.delete_all
SampleCityName.delete_all
SampleFirstName.delete_all
SampleLastName.delete_all
SampleTeamName.delete_all

addCities
addTeams
addFirstNames
addLastNames
addDivisionNames
