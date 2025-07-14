class CreateMonsters < ActiveRecord::Migration[8.0]
  def change
    create_table :monsters, id: false do |t|
       t.string :monster_uuid, primary_key: true
      t.string :name
      t.string :description
      t.string :game_uuid

      t.timestamps
    end
  end
end
