# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_03_003137) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferences", force: :cascade do |t|
    t.string "name"
    t.integer "league_id"
    t.boolean "is_east"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name"
    t.integer "conference_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "draft_players", force: :cascade do |t|
    t.integer "player_id"
    t.integer "season_id"
    t.integer "team_id"
    t.integer "order"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_events", force: :cascade do |t|
    t.integer "game_id"
    t.integer "seconds"
    t.string "metadata"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "season_id"
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.integer "winning_team_id"
    t.integer "home_team_score"
    t.integer "away_team_score"
    t.boolean "is_OT"
    t.integer "game_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.integer "salary_cap"
    t.float "average_cap_percentage_increase"
    t.float "cap_increase_chance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "player_seasons", force: :cascade do |t|
    t.integer "season_id"
    t.integer "player_id"
    t.string "stats"
    t.integer "offense"
    t.integer "defense"
    t.integer "endurance"
    t.integer "consistency"
    t.integer "dedication"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "team_id"
    t.integer "game_start"
  end

  create_table "players", force: :cascade do |t|
    t.integer "league_id"
    t.string "firstname"
    t.string "lastname"
    t.boolean "is_drafted"
    t.integer "injury_games"
    t.integer "suspension_games"
    t.integer "player_chemistry_id"
    t.boolean "is_goalie"
    t.integer "offense"
    t.integer "defense"
    t.integer "endurance"
    t.integer "consistency"
    t.integer "dedication"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "playoff_series", force: :cascade do |t|
    t.integer "season_id"
    t.integer "round"
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.integer "home_team_wins"
    t.integer "away_team_wins"
    t.integer "winning_team_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "conference_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "league_id"
    t.integer "champion_id"
    t.integer "year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.integer "division_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
