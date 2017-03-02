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

ActiveRecord::Schema.define(version: 20170302150629) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attachinary_files", force: :cascade do |t|
    t.string   "attachinariable_type"
    t.integer  "attachinariable_id"
    t.string   "scope"
    t.string   "public_id"
    t.string   "version"
    t.integer  "width"
    t.integer  "height"
    t.string   "format"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachinariable_type", "attachinariable_id", "scope"], name: "by_scoped_parent", using: :btree
  end

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "table_id"
    t.string   "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["table_id"], name: "index_bookings_on_table_id", using: :btree
    t.index ["user_id"], name: "index_bookings_on_user_id", using: :btree
  end

  create_table "spaces", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "address"
    t.string   "industry"
    t.text     "company_info"
    t.boolean  "reception"
    t.boolean  "security"
    t.boolean  "event_space"
    t.boolean  "bike_storage"
    t.boolean  "phone_booth"
    t.boolean  "kitchen"
    t.boolean  "lockers"
    t.boolean  "cafe_restaurant"
    t.boolean  "showers"
    t.boolean  "meeting_room"
    t.boolean  "always_open"
    t.boolean  "wifi"
    t.boolean  "refreshment"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "company_name"
    t.index ["user_id"], name: "index_spaces_on_user_id", using: :btree
  end

  create_table "tables", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "space_id"
    t.integer  "price"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "desk_type"
    t.index ["space_id"], name: "index_tables_on_space_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "linkedin"
    t.string   "twitter"
    t.string   "about"
    t.text     "info"
    t.string   "facebook"
    t.string   "phonenumber"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "bookings", "tables"
  add_foreign_key "bookings", "users"
  add_foreign_key "spaces", "users"
  add_foreign_key "tables", "spaces"
end
