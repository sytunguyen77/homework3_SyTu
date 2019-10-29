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

ActiveRecord::Schema.define(version: 2019_10_29_014754) do

  create_table "appointments", force: :cascade do |t|
    t.datetime "visit"
    t.integer "physician_id", null: false
    t.string "patient"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "offices", force: :cascade do |t|
    t.string "Location"
    t.string "streetaddress"
    t.integer "zip"
    t.integer "phone"
    t.integer "physician_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["physician_id"], name: "index_offices_on_physician_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "physicians", force: :cascade do |t|
    t.string "name"
    t.string "specialty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointments", "physicians"
  add_foreign_key "offices", "physicians"
end
