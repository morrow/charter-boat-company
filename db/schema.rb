# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150429221130) do

  create_table "avatars", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boats", force: :cascade do |t|
    t.string   "name"
    t.string   "length"
    t.string   "builder"
    t.datetime "added"
    t.integer  "speed"
    t.integer  "cockpit_size"
    t.string   "powertrain"
    t.integer  "passengers"
    t.string   "slug"
    t.integer  "avatar_id"
    t.text     "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "cms", force: :cascade do |t|
    t.string   "key"
    t.text     "value"
    t.string   "slug"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "crewmen", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "license"
    t.integer  "image_id"
    t.string   "slug"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "images", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "kvs", force: :cascade do |t|
    t.string   "key"
    t.text     "value"
    t.string   "category"
    t.string   "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "location"
    t.string   "public"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.datetime "start"
    t.datetime "end"
    t.boolean  "active"
    t.integer  "boat_id"
    t.float    "full_day"
    t.float    "half_day"
    t.float    "night"
    t.float    "full_day_pax"
    t.float    "half_day_pax"
    t.float    "night_pax"
    t.float    "discount"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "rates", ["boat_id"], name: "index_rates_on_boat_id"

end
