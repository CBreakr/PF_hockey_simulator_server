class UpdatesForDraftPacks < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :draft_pack_id, :integer
  end
end
