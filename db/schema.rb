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

ActiveRecord::Schema.define(version: 2019_08_21_135235) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boats", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.integer "capacity"
    t.bigint "user_id"
    t.float "latitude"
    t.float "longitude"
    t.float "price"
    t.float "avarage_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "length"
    t.text "description"
    t.integer "room_number"
    t.integer "sleep_number"
    t.integer "bathroom_number"
    t.integer "deck_number"
    t.integer "gallons_per_hour"
    t.string "photo"
    t.string "boat_type"
    t.string "address"
    t.index ["user_id"], name: "index_boats_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "boat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pickup_date"
    t.string "return_date"
    t.integer "number_of_guests"
    t.index ["boat_id"], name: "index_bookings_on_boat_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "photo"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "boats", "users"
  add_foreign_key "bookings", "boats"
  add_foreign_key "bookings", "users"
end
