class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.text :address
      t.bigint :phone_no
      t.text :gender

      t.timestamps
    end
  end
end
