class CreateSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :seasons do |t|
      t.integer :league_id
      t.integer :champion_id
      t.integer :year

      t.timestamps
    end
  end
end
