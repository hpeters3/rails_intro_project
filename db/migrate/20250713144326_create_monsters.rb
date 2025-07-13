class CreateMonsters < ActiveRecord::Migration[8.0]
  def change
    create_table :monsters do |t|
      t.string :monster_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
