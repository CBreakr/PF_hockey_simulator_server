class AlterPlayerSeason < ActiveRecord::Migration[6.0]
  def change
    add_column :player_seasons, :team_id, :integer
    add_column :player_seasons, :game_start, :integer
  end
end
