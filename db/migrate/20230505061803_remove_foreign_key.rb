class RemoveForeignKey < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :journey_details, :bill_details
    remove_foreign_key :journey_details, :drivers
    remove_foreign_key :journey_details, :taxi_details
  end
end
