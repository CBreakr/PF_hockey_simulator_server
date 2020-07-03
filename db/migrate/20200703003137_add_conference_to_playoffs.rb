class AddConferenceToPlayoffs < ActiveRecord::Migration[6.0]
  def change
    add_column :playoff_series, :conference_id, :integer
  end
end
