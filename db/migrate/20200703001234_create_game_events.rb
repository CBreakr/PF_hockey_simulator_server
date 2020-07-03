class CreateGameEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :game_events do |t|
      t.integer :game_id
      t.integer :seconds
      t.string :metadata

      t.timestamps
    end
  end
end
