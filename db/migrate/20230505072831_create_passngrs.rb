class CreatePassngrs < ActiveRecord::Migration[6.0]
  def change
    create_table :passngrs do |t|

      t.references :journey_detail, null: false, foreign_key: true

      t.timestamps
    end
  end
end
