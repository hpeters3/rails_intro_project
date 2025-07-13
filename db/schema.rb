# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_07_13_144637) do
  create_table "bosses", force: :cascade do |t|
    t.string "boss_id"
    t.string "name"
    t.string "description"
    t.integer "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_bosses_on_game_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "character_id"
    t.string "name"
    t.string "description"
    t.string "gender"
    t.string "race"
    t.integer "place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_id"], name: "index_characters_on_place_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "game_id"
    t.string "name"
    t.string "description"
    t.string "developer"
    t.string "publisher"
    t.string "released_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mobs", force: :cascade do |t|
    t.integer "monster_id", null: false
    t.integer "game_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_mobs_on_game_id"
    t.index ["monster_id"], name: "index_mobs_on_monster_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "monster_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string "place_id"
    t.string "game_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zelda_storylines", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_zelda_storylines_on_character_id"
    t.index ["game_id"], name: "index_zelda_storylines_on_game_id"
  end

  create_table "zelda_worlds", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_zelda_worlds_on_game_id"
    t.index ["place_id"], name: "index_zelda_worlds_on_place_id"
  end

  add_foreign_key "bosses", "games"
  add_foreign_key "characters", "places"
  add_foreign_key "mobs", "games"
  add_foreign_key "mobs", "monsters"
  add_foreign_key "zelda_storylines", "characters"
  add_foreign_key "zelda_storylines", "games"
  add_foreign_key "zelda_worlds", "games"
  add_foreign_key "zelda_worlds", "places"
end
