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

ActiveRecord::Schema[8.0].define(version: 2025_07_13_005509) do
  create_table "characters", force: :cascade do |t|
    t.string "character_id"
    t.string "name"
    t.string "description"
    t.string "gender"
    t.string "race"
    t.integer "Place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Place_id"], name: "index_characters_on_Place_id"
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

  create_table "places", force: :cascade do |t|
    t.string "place_id"
    t.string "game_id"
    t.string "name"
    t.string "description"
    t.integer "Character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Character_id"], name: "index_places_on_Character_id"
  end

  create_table "zelda_storylines", force: :cascade do |t|
    t.integer "Game_id", null: false
    t.integer "Character_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Character_id"], name: "index_zelda_storylines_on_Character_id"
    t.index ["Game_id"], name: "index_zelda_storylines_on_Game_id"
  end

  create_table "zelda_worlds", force: :cascade do |t|
    t.integer "Game_id", null: false
    t.integer "Place_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Game_id"], name: "index_zelda_worlds_on_Game_id"
    t.index ["Place_id"], name: "index_zelda_worlds_on_Place_id"
  end

  add_foreign_key "characters", "Places"
  add_foreign_key "places", "Characters"
  add_foreign_key "zelda_storylines", "Characters"
  add_foreign_key "zelda_storylines", "Games"
  add_foreign_key "zelda_worlds", "Games"
  add_foreign_key "zelda_worlds", "Places"
end
