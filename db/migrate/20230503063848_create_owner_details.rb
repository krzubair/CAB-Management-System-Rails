class CreateOwnerDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :owner_details do |t|
      t.string :owner_name
      t.integer :owner_adhar
      t.text :owner_address

      t.timestamps
    end
  end
end
