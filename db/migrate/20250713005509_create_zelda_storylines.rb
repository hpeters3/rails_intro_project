class CreateZeldaStorylines < ActiveRecord::Migration[8.0]
  def change
    create_table :zelda_storylines do |t|
      t.references :Game, null: false, foreign_key: true
      t.references :Character, null: false, foreign_key: true

      t.timestamps
    end
  end
end
