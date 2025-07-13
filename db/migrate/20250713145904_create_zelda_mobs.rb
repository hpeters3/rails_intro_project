class CreateZeldaMobs < ActiveRecord::Migration[8.0]
  def change
    create_table :zelda_mobs do |t|
      t.references :monster, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
