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

ActiveRecord::Schema.define(version: 20180324054456) do

  create_table "carriers", force: :cascade do |t|
    t.string "password_digest"
    t.string "username"
    t.string "company_name"
    t.string "email"
  end

  create_table "freight", force: :cascade do |t|
    t.string  "consignee"
    t.integer "pallet_count"
    t.integer "load_weight"
    t.integer "pickup_date"
    t.integer "delivery_date"
    t.string  "pickup_location"
    t.string  "delivery_location"
    t.integer "carrier_id"
  end

end
