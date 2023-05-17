class AddOwnerDetailsToTaxiDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :taxi_details, :owner_details, null: false, foreign_key: true
  end
end
