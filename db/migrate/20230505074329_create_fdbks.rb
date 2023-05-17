class CreateFdbks < ActiveRecord::Migration[6.0]
  def change
    create_table :fdbks do |t|
      t.text :description
      t.string :email
      t.references :passngr, null: false, foreign_key: true
      t.references :journey_detail, null: false, foreign_key: true
      


      t.timestamps
    end
  end
end
