class CreateZeldaStorylines < ActiveRecord::Migration[8.0]
  def change
    create_table :zelda_storylines, id: false do |t|
      t.string :character_uuid, null: false
      t.string :game_uuid, null: false

      t.timestamps
    end

    add_index :zelda_storylines, [ :character_uuid, :game_uuid ], unique: true
  end
end
