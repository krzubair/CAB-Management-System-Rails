class DropTable < ActiveRecord::Migration[6.0]
  def change
    drop_table :journey_details
  end
end
