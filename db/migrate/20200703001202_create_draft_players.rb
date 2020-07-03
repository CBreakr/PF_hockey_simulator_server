class CreateDraftPlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :draft_players do |t|
      t.integer :player_id
      t.integer :season_id
      t.integer :team_id
      t.integer :order

      t.timestamps
    end
  end
end
