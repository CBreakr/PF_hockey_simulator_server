class CreateConferences < ActiveRecord::Migration[6.0]
  def change
    create_table :conferences do |t|
      t.string :name
      t.integer :league_id
      t.boolean :is_east

      t.timestamps
    end
  end
end
