class CreateBillDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :bill_details do |t|
      t.date :bill_date
      t.integer :total_amt
      t.references :journey_detail, null: false, foreign_key: true


      t.timestamps
    end
  end
end
