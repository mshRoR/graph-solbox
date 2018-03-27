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

ActiveRecord::Schema.define(version: 20180324090816) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cables", force: :cascade do |t|
    t.string   "cable_identity"
    t.integer  "solbox_from_id"
    t.integer  "solbox_to_id"
    t.integer  "distance"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "cables", ["solbox_from_id"], name: "index_cables_on_solbox_from_id", using: :btree
  add_index "cables", ["solbox_to_id"], name: "index_cables_on_solbox_to_id", using: :btree

  create_table "solboxes", force: :cascade do |t|
    t.string   "customer"
    t.integer  "battery_size"
    t.integer  "panel_size"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
