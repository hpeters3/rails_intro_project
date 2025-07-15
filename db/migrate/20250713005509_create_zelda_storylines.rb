class CreateZeldaStorylines < ActiveRecord::Migration[8.0]
  def change
    create_table :zelda_storylines do |t|
      t.string :character_uuid, null: false
      t.string :game_uuid, null: false

      t.timestamps
    end

    add_index :zelda_storylines, [ :character_uuid, :game_uuid ], unique: true
    add_foreign_key :zelda_storylines, :characters, column: :character_uuid, primary_key: :character_uuid
    add_foreign_key :zelda_storylines, :games, column: :game_uuid, primary_key: :game_uuid
  end
end
