class ChangeActiveDefaultInDrivers < ActiveRecord::Migration[6.0]
  def change
    change_column_default :drivers, :active, true
  end
end
