class RemoveBigintFromDriver < ActiveRecord::Migration[6.0]
  def change
    remove_column :drivers, :bigint, :string
  end
end
