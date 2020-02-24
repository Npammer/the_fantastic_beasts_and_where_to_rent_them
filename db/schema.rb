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

ActiveRecord::Schema.define(version: 2020_02_24_035707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abilities", force: :cascade do |t|
    t.string "description"
    t.bigint "beast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beast_id"], name: "index_abilities_on_beast_id"
  end

  create_table "beasts", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.integer "dangerousness"
    t.integer "price"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_beasts_on_user_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "beast_id"
    t.date "start_date"
    t.date "end_date"
    t.integer "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beast_id"], name: "index_bookings_on_beast_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "booking_id"
    t.text "content"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "abilities", "beasts"
  add_foreign_key "beasts", "users"
  add_foreign_key "bookings", "beasts"
  add_foreign_key "bookings", "users"
  add_foreign_key "reviews", "bookings"
end
