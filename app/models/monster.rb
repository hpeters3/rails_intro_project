class Monster < ApplicationRecord
  self.primary_key = "monster_uuid"

  has_and_belongs_to_many :games,
  join_table: "zelda_mobs",
  foreign_key: "monster_uuid",
  association_foreign_key: "game_uuid",
  primary_key: "monster_uuid"

  validates :name, presence: true
  validates :description, presence: true
end
