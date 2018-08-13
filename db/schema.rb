# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_13_141413) do

  create_table "driver_histories", force: :cascade do |t|
    t.date "date_of_incident"
    t.integer "value"
    t.text "description"
    t.string "incident_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "title"
    t.string "forename"
    t.string "surname"
    t.string "email"
    t.string "telephone"
    t.date "date_of_birth"
    t.string "license_type"
    t.string "occupation"
    t.string "street"
    t.string "city"
    t.string "county"
    t.integer "license_period"
    t.string "postcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.date "date_created"
    t.integer "premium"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "person_id"
    t.integer "vehicle_id"
    t.integer "driver_history_id"
    t.index ["driver_history_id"], name: "index_quotes_on_driver_history_id"
    t.index ["person_id"], name: "index_quotes_on_person_id"
    t.index ["vehicle_id"], name: "index_quotes_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "registration"
    t.integer "mileage"
    t.integer "value"
    t.string "parking_location"
    t.date "policy_start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
