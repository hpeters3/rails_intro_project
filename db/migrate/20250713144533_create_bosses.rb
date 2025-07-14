class CreateBosses < ActiveRecord::Migration[8.0]
  def change
    create_table :bosses, id: false do |t|
      t.string :boss_uuid, primary_key: true
      t.string :name
      t.string :description
      t.references :game_uuid

      t.timestamps
    end
  end
end
