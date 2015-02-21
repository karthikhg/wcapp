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

ActiveRecord::Schema.define(version: 20150221091550) do

  create_table "matches", force: :cascade do |t|
    t.integer  "team1_id"
    t.integer  "team2_id"
    t.integer  "team1_total"
    t.integer  "team2_total"
    t.integer  "team1_wickets"
    t.integer  "team2_wickets"
    t.float    "team1_overs"
    t.float    "team2_overs"
    t.integer  "winner"
    t.boolean  "tie"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "stage"
  end

  create_table "pools", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.integer  "wins"
    t.integer  "losses"
    t.integer  "ties"
    t.integer  "points"
    t.float    "nrr"
    t.integer  "runs_for"
    t.float    "overs_for"
    t.integer  "runs_against"
    t.float    "overs_against"
    t.integer  "pool_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
