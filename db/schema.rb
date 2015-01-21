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

ActiveRecord::Schema.define(version: 20150121181457) do

  create_table "committees", force: true do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "committees_voivodeships", force: true do |t|
    t.integer  "committee_id"
    t.integer  "voivodeship_id"
    t.boolean  "is_chosen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
  end

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
