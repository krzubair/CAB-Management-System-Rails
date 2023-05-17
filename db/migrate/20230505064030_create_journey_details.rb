class CreateJourneyDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :journey_details do |t|
      t.date :date_of_journey
      t.time :start_time
      t.time :end_time
      t.string :start_loc
      t.string :end_loc
      t.integer :adv_amt
      t.integer :no_of_passngr
      t.references :driver, null: false, foreign_key: true
      t.references :taxi_detail, null:false, foreign_key: true
      t.timestamps
    end
  end
end
