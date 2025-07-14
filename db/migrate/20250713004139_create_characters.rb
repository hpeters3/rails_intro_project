class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
   create_table :characters, id: false do |t|
      t.string :character_uuid, primary_key: true
      t.string :name
      t.string :description
      t.string :gender
      t.string :race
      t.string :game_uuid
      t.string :place_uuid

      t.timestamps
    end
  end
end
