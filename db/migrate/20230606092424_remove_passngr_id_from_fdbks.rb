class RemovePassngrIdFromFdbks < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :fdbks, :passngrs
    remove_index :fdbks, :passngr_id
    remove_column :fdbks, :passngr_id, :integer
  end
end
