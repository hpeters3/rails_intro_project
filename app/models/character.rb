class Character < ApplicationRecord
 self.primary_key = "character_uuid"

  belongs_to :place, foreign_key: "place_uuid", primary_key: "place_uuid", optional: true

  has_many :zelda_storylines, dependent: :destroy, foreign_key: :character_uuid, primary_key: :character_uuid
  has_many :games, through: :zelda_storylines

  validates :name, presence: true
  validates :description, presence: true
end
