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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111215102610) do

  create_table "histories", :force => true do |t|
    t.date     "date_start"
    t.date     "date_end"
    t.text     "comment_item"
    t.text     "comment_tenant"
    t.text     "comment_owner"
    t.float    "rate_item"
    t.float    "rate_tenant"
    t.float    "rate_owner"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.boolean  "is_active"
    t.string   "owner"
    t.date     "availability_from"
    t.date     "availability_to"
    t.decimal  "price_min"
    t.decimal  "price_max"
    t.decimal  "deposit"
    t.float    "grade"
    t.string   "telephone"
    t.string   "country"
    t.string   "county"
    t.string   "city"
    t.string   "district"
    t.string   "street"
    t.integer  "place_nr"
    t.integer  "flat_nr"
    t.string   "coordinates"
    t.string   "place_type"
    t.integer  "floor_nr"
    t.integer  "nr_of_floors"
    t.integer  "nr_of_rooms"
    t.integer  "build_year"
    t.string   "heating_type"
    t.integer  "people_max"
    t.string   "for_who"
    t.integer  "min_length_lease"
    t.integer  "type_length_lease"
    t.text     "description"
    t.boolean  "has_balcony"
    t.boolean  "has_garage"
    t.boolean  "has_basement"
    t.boolean  "has_parking"
    t.boolean  "has_internet"
    t.boolean  "has_terrace"
    t.boolean  "has_lift"
    t.boolean  "has_garden"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
