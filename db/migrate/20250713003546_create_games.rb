class CreateGames < ActiveRecord::Migration[8.0]
  def change
    create_table :games, id: false do |t|
      t.string :game_uuid, primary_key: true
      t.string :name
      t.string :description
      t.string :developer
      t.string :publisher
      t.string :released_date

      t.timestamps
    end
  end
end
