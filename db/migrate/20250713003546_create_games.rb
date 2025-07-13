class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games do |t|
      t.string :game_id
      t.string :name
      t.string :description
      t.string :developer
      t.string :publisher
      t.string :released_date

      t.timestamps
    end
  end
end
