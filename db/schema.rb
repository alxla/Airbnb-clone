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

ActiveRecord::Schema.define(version: 20170228140549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "messages", force: :cascade do |t|
    t.integer  "thread_number"
    t.string   "title"
    t.text     "body"
    t.integer  "request_id"
    t.integer  "profile_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["profile_id"], name: "index_messages_on_profile_id", using: :btree
    t.index ["request_id"], name: "index_messages_on_request_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "picture"
    t.float    "price"
    t.integer  "universe_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["universe_id"], name: "index_products_on_universe_id", using: :btree
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "profile_type"
    t.string   "name"
    t.string   "picture"
    t.text     "biography"
    t.string   "country"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_profiles_on_user_id", using: :btree
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "status"
    t.integer  "product_id"
    t.integer  "profile_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "profile_artist_id"
    t.index ["product_id"], name: "index_requests_on_product_id", using: :btree
    t.index ["profile_id"], name: "index_requests_on_profile_id", using: :btree
  end

  create_table "universes", force: :cascade do |t|
    t.string   "name"
    t.string   "picture"
    t.integer  "profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_universes_on_profile_id", using: :btree
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "messages", "profiles"
  add_foreign_key "messages", "requests"
  add_foreign_key "products", "universes"
  add_foreign_key "profiles", "users"
  add_foreign_key "requests", "products"
  add_foreign_key "requests", "profiles"
  add_foreign_key "requests", "profiles", column: "profile_artist_id"
  add_foreign_key "universes", "profiles"
end
