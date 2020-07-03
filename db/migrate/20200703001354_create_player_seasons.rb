class CreatePlayerSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :player_seasons do |t|
      t.integer :season_id
      t.integer :player_id
      t.string :stats
      t.integer :offense
      t.integer :defense
      t.integer :endurance
      t.integer :consistency
      t.integer :dedication

      t.timestamps
    end
  end
end
