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

ActiveRecord::Schema.define(version: 20171130915125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "player_statistics", force: :cascade do |t|
    t.integer "player_id"
    t.integer "goals"
    t.integer "assists"
    t.integer "minutes_played"
    t.integer "saves"
    t.integer "yellow_cards"
    t.integer "red_cards"
    t.integer "points"
  end

  add_index "player_statistics", ["player_id"], name: "index_player_statistics_on_player_id", using: :btree

  create_table "players", force: :cascade do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.integer "team_id"
    t.string  "position"
  end

  add_index "players", ["team_id"], name: "index_players_on_team_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.string "club_name"
    t.string "short_name"
    t.string "color"
    t.string "city"
    t.string "stadium"
  end

  add_foreign_key "player_statistics", "players"
  add_foreign_key "players", "teams"
end
