class Game < ApplicationRecord
  self.primary_key = "game_uuid"

  has_and_belongs_to_many :characters,
    join_table: "zelda_storyline",
    foreign_key: "game_uuid",
    association_foreign_key: "character_uuid",
    primary_key: "game_uuid"

  has_and_belongs_to_many :places,
    join_table: "zelda_worlds",
    foreign_key: "game_uuid",
    association_foreign_key: "place_uuid",
    primary_key: "game_uuid"

  has_and_belongs_to_many :monsters,
    join_table: "zelda_mobs",
    foreign_key: "game_uuid",
    association_foreign_key: "monster_uuid",
    primary_key: "game_uuid"

    has_many :bosses, foreign_key: "game_uuid", primary_key: "game_uuid"

  validates :name, presence: true
  validates :developer, presence: true
end
