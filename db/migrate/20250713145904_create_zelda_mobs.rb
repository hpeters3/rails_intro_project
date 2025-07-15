class CreateZeldaMobs < ActiveRecord::Migration[8.0]
  def change
    create_table :zelda_mobs do |t|
      t.string :monster_uuid, null: false
      t.string :game_uuid, null: false

      t.timestamps
    end

    add_index :zelda_mobs, [ :monster_uuid, :game_uuid ], unique: true
  end
end
