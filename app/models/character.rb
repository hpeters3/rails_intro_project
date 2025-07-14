class Character < ApplicationRecord
 self.primary_key = "character_uuid"

  belongs_to :place, foreign_key: "place_uuid", primary_key: "character_uuid", optional: true

  has_and_belongs_to_many :games,
    join_table: "zelda_storylines",
    foreign_key: "character_uuid",
    association_foreign_key: "game_uuid",
    primary_key: "character_uuid"

  validates :name, presence: true
  validates :description, presence: true
end
