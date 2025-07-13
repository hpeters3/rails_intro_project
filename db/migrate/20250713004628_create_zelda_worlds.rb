class CreateZeldaWorlds < ActiveRecord::Migration[8.0]
  def change
    create_table :zelda_worlds do |t|
      t.references :game, null: false, foreign_key: true
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
