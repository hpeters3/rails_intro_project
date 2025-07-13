class CreateCharacters < ActiveRecord::Migration[8.0]
  def change
    create_table :characters do |t|
      t.string :character_id
      t.string :name
      t.string :description
      t.string :gender
      t.string :race
      t.references :place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
