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

ActiveRecord::Schema.define(version: 20160411013128) do

  create_table "restaurants", force: :cascade do |t|
    t.string   "name",         limit: 255,                            null: false
    t.string   "address",      limit: 255
    t.string   "telephone",    limit: 255
    t.decimal  "average_rate",               precision: 18, scale: 6, null: false
    t.decimal  "average_cost",               precision: 18, scale: 6, null: false
    t.text     "comments",     limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.decimal  "cost",                        precision: 10, null: false
    t.decimal  "rate",                        precision: 10, null: false
    t.text     "comments",      limit: 65535
    t.string   "name",          limit: 255
    t.integer  "restaurant_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
