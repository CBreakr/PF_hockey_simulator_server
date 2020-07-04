class CreateDraftPacks < ActiveRecord::Migration[6.0]
  def change
    create_table :draft_packs do |t|
      t.integer :league_id
      t.integer :current_team_id

      t.timestamps
    end
  end
end
