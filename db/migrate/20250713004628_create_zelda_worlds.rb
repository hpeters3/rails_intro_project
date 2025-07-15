class CreateZeldaWorlds < ActiveRecord::Migration[8.0]
  def change
    create_table :zelda_worlds do |t|
      t.string :place_uuid, null: false
      t.string :game_uuid, null: false

      t.timestamps
    end

    add_index :zelda_worlds, [ :place_uuid, :game_uuid ], unique: true
  end
end
