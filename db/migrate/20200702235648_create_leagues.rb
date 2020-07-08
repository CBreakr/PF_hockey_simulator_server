class CreateLeagues < ActiveRecord::Migration[6.0]
  def change
    create_table :leagues do |t|
      t.string :name
      t.float :salary_cap
      t.float :average_cap_percentage_increase
      t.float :cap_increase_chance
      t.integer :playoff_teams
      t.integer :year

      t.timestamps
    end
  end
end
