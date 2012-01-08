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

ActiveRecord::Schema.define(:version => 20120108222146) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
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

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "authentications", :force => true do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "user_id"
    t.integer  "place_id"
  end

  create_table "images", :force => true do |t|
    t.integer  "place_id"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", :force => true do |t|
    t.boolean  "is_active"
    t.date     "availability_from"
    t.date     "availability_to"
    t.decimal  "price_min"
    t.decimal  "price_max"
    t.decimal  "deposit"
    t.float    "grade"
    t.string   "telephone"
    t.string   "country"
    t.string   "region"
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
    t.integer  "user_id"
    t.float    "surface",           :limit => 255
  end

  create_table "preferences", :force => true do |t|
    t.boolean  "animal"
    t.boolean  "smoking"
    t.boolean  "relationship"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "place_id"
  end

  create_table "requests", :force => true do |t|
    t.integer  "user_id"
    t.integer  "place_id"
    t.integer  "owner_id"
    t.integer  "status"
    t.date     "date_start"
    t.date     "date_end"
    t.integer  "number_of_people"
    t.string   "people_type"
    t.text     "message"
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
    t.integer  "roles_mask"
    t.string   "name"
    t.string   "surname"
    t.integer  "years"
    t.string   "username"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
