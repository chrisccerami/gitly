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

ActiveRecord::Schema.define(version: 20150225022549) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "analytics", force: :cascade do |t|
    t.integer  "visits",        default: 0, null: false
    t.integer  "unique_visits", default: 0, null: false
    t.integer  "link_id",                   null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "links", force: :cascade do |t|
    t.string   "long_url",   null: false
    t.string   "short_url",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unique_visitors", force: :cascade do |t|
    t.integer  "analytic_id",     null: false
    t.string   "visitor_ip",      null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "browser"
    t.string   "browser_version"
    t.string   "platform"
    t.string   "country"
  end

end
