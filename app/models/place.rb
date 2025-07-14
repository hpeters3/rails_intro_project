class Place < ApplicationRecord
  self.primary_key = "place_uuid"

  has_many :characters, foreign_key: "place_uuid", primary_key: "place_uuid", optional: true

  has_and_belongs_to_many :games,
    join_table: "zelda_worlds",
    foreign_key: "place_uuid",
    association_foreign_key: "game_uuid",
    primary_key: "place_uuid"

  validates :name, presence: true
  validates :description, presence: true
end
