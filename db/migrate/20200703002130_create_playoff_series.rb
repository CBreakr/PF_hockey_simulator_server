class CreatePlayoffSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :playoff_series do |t|
      t.integer :season_id
      t.integer :round
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :home_team_wins
      t.integer :away_team_wins
      t.integer :winning_team_id

      t.timestamps
    end
  end
end
