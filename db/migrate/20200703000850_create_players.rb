class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.integer :league_id
      t.string :firstname
      t.string :lastname
      t.boolean :is_drafted
      t.integer :injury_games
      t.integer :suspension_games
      t.integer :player_chemistry_id
      t.boolean :is_goalie
      t.integer :offense
      t.integer :defense
      t.integer :endurance
      t.integer :consistency
      t.integer :dedication

      t.timestamps
    end
  end
end
