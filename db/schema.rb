# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_20_072104) do

  create_table "bill_details", force: :cascade do |t|
    t.date "bill_date"
    t.integer "total_amt"
    t.integer "journey_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["journey_detail_id"], name: "index_bill_details_on_journey_detail_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.text "name"
    t.string "gender"
    t.integer "phone_no"
    t.integer "age"
    t.text "dl_no"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "active"
  end

  create_table "fdbks", force: :cascade do |t|
    t.text "description"
    t.string "email"
    t.integer "passngr_id", null: false
    t.integer "journey_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["journey_detail_id"], name: "index_fdbks_on_journey_detail_id"
    t.index ["passngr_id"], name: "index_fdbks_on_passngr_id"
  end

  create_table "journey_details", force: :cascade do |t|
    t.date "date_of_journey"
    t.time "start_time"
    t.time "end_time"
    t.string "start_loc"
    t.string "end_loc"
    t.integer "adv_amt"
    t.integer "no_of_passngr"
    t.integer "driver_id", null: false
    t.integer "taxi_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "completed", default: false
    t.index ["driver_id"], name: "index_journey_details_on_driver_id"
    t.index ["taxi_detail_id"], name: "index_journey_details_on_taxi_detail_id"
  end

  create_table "owner_details", force: :cascade do |t|
    t.string "owner_name"
    t.integer "owner_adhar"
    t.text "owner_address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "passngrs", force: :cascade do |t|
    t.integer "journey_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["journey_detail_id"], name: "index_passngrs_on_journey_detail_id"
  end

  create_table "taxi_details", force: :cascade do |t|
    t.string "model_no"
    t.integer "year"
    t.string "taxi_type"
    t.string "status"
    t.integer "owner_detail_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["owner_detail_id"], name: "index_taxi_details_on_owner_detail_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.bigint "phone_no"
    t.text "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "bill_details", "journey_details"
  add_foreign_key "fdbks", "journey_details"
  add_foreign_key "fdbks", "passngrs"
  add_foreign_key "journey_details", "drivers"
  add_foreign_key "journey_details", "taxi_details"
  add_foreign_key "passngrs", "journey_details"
  add_foreign_key "taxi_details", "owner_details"
end
