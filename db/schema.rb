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

ActiveRecord::Schema.define(version: 20150208183643) do

  create_table "committees", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "committees_voivodeships", force: true do |t|
    t.integer "committee_id"
    t.integer "voivodeship_id"
  end

  add_index "committees_voivodeships", ["committee_id"], name: "index_committees_voivodeships_on_committee_id", using: :btree
  add_index "committees_voivodeships", ["voivodeship_id"], name: "index_committees_voivodeships_on_voivodeship_id", using: :btree

  create_table "constituencies", force: true do |t|
    t.string   "name"
    t.integer  "voivodeship_id"
    t.integer  "number_of_mandates"
    t.integer  "number_of_voters"
    t.integer  "number_of_used_ballots"
    t.integer  "valid_votes"
    t.integer  "invalid_votes_no_choice"
    t.integer  "invalid_votes_more_choices"
    t.integer  "invalid_votes_other"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "constituencies", ["user_id"], name: "index_constituencies_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.integer  "role_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  create_table "voivodeships", force: true do |t|
    t.string   "name"
    t.integer  "places_regional_council"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "votes", force: true do |t|
    t.integer  "committee_id"
    t.integer  "constituency_id"
    t.integer  "number_of_votes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
