class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.string :name
      t.integer :conference_id

      t.timestamps
    end
  end
end
