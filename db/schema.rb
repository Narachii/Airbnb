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

ActiveRecord::Schema.define(version: 20170814102536) do

  create_table "amenities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "amenity_rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id"
    t.integer  "amenity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amenity_id"], name: "index_amenity_rooms_on_amenity_id", using: :btree
    t.index ["room_id"], name: "index_amenity_rooms_on_room_id", using: :btree
  end

  create_table "hosts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "data_in"
    t.date     "date_out"
    t.integer  "user_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "guest"
  end

  create_table "rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "host_id",                                      null: false
    t.string   "name"
    t.text     "description",    limit: 65535
    t.text     "image",          limit: 65535
    t.string   "place_type"
    t.string   "property_type"
    t.string   "room_type"
    t.integer  "guest_number"
    t.integer  "bedroom"
    t.integer  "bed"
    t.integer  "bathroom"
    t.string   "country"
    t.integer  "zipcode"
    t.text     "state",          limit: 65535
    t.text     "city",           limit: 65535
    t.text     "street_address", limit: 65535
    t.text     "optional",       limit: 65535
    t.float    "lattitude",      limit: 24
    t.float    "longitude",      limit: 24
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.boolean  "progress",                     default: false, null: false
    t.boolean  "progress_1",                   default: false, null: false
    t.boolean  "progress_2",                   default: false, null: false
    t.integer  "price"
  end

  create_table "space_rooms", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "room_id"
    t.integer  "space_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["room_id"], name: "index_space_rooms_on_room_id", using: :btree
    t.index ["space_id"], name: "index_space_rooms_on_space_id", using: :btree
  end

  create_table "spaces", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                default: "",    null: false
    t.string   "encrypted_password",                   default: "",    null: false
    t.string   "gender"
    t.bigint   "phone_number"
    t.string   "language"
    t.string   "currency"
    t.text     "location",               limit: 65535
    t.text     "text",                   limit: 65535
    t.float    "latitude",               limit: 24
    t.float    "longitude",              limit: 24
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                        default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "first_name",                                           null: false
    t.string   "last_name",                                            null: false
    t.integer  "birthday_month",                                       null: false
    t.integer  "birthday_day",                                         null: false
    t.integer  "birthday_year",                                        null: false
    t.text     "image",                  limit: 65535
    t.boolean  "progress",                             default: false, null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "amenity_rooms", "amenities"
  add_foreign_key "amenity_rooms", "rooms"
  add_foreign_key "space_rooms", "rooms"
  add_foreign_key "space_rooms", "spaces"
end
