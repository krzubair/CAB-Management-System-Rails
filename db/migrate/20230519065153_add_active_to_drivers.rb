class AddActiveToDrivers < ActiveRecord::Migration[6.0]
  def change
    add_column :drivers, :active, :boolean
  end
end
