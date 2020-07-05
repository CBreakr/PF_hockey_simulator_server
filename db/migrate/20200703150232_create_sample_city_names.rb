class CreateSampleCityNames < ActiveRecord::Migration[6.0]
  def change
    create_table :sample_city_names do |t|
      t.string :name
      t.boolean :is_east

      t.timestamps
    end
  end
end
