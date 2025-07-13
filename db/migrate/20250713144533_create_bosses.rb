class CreateBosses < ActiveRecord::Migration[8.0]
  def change
    create_table :bosses do |t|
      t.string :boss_id
      t.string :name
      t.string :description
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
