class CreateDrivers < ActiveRecord::Migration[6.0]
  def change
    create_table :drivers do |t|
      t.text :name
      t.string :gender
      t.integer :phone_no
      t.string :bigint
      t.integer :age
      t.text :dl_no

      t.timestamps
    end
  end
end
