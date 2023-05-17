class CreateTaxiDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :taxi_details do |t|

      t.string :model_no
      t.integer :year
      t.string :taxi_type
      t.string :status
      t.references :owner_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
