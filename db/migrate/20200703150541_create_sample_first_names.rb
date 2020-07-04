class CreateSampleFirstNames < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_first_names do |t|
      t.string :name

      t.timestamps
    end
  end
end
