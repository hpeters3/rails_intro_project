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

ActiveRecord::Schema[8.0].define(version: 2025_07_13_145904) do
  create_table "bosses", primary_key: "boss_uuid", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "game_uuid_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_uuid_id"], name: "index_bosses_on_game_uuid_id"
  end

  create_table "characters", primary_key: "character_uuid", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "gender"
    t.string "race"
    t.string "place_uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", primary_key: "game_uuid", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "developer"
    t.string "publisher"
    t.string "released_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "monsters", primary_key: "monster_uuid", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "game_uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", primary_key: "place_uuid", id: :string, force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "game_uuid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "zelda_mobs", id: false, force: :cascade do |t|
    t.string "monster_uuid", null: false
    t.string "game_uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_uuid", "game_uuid"], name: "index_zelda_mobs_on_monster_uuid_and_game_uuid", unique: true
  end

  create_table "zelda_storylines", id: false, force: :cascade do |t|
    t.string "character_uuid", null: false
    t.string "game_uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_uuid", "game_uuid"], name: "index_zelda_storylines_on_character_uuid_and_game_uuid", unique: true
  end

  create_table "zelda_worlds", id: false, force: :cascade do |t|
    t.string "place_uuid", null: false
    t.string "game_uuid", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_uuid", "game_uuid"], name: "index_zelda_worlds_on_place_uuid_and_game_uuid", unique: true
  end
end
