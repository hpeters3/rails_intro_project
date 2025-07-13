class CreatePlaces < ActiveRecord::Migration[8.0]
  def change
    create_table :places do |t|
      t.string :place_id
      t.string :game_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
