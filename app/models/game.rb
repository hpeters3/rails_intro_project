class Game < ApplicationRecord
  self.primary_key = "game_uuid"

  has_many :zelda_storylines, dependent: :destroy, foreign_key: :game_uuid, primary_key: :game_uuid
  has_many :characters, through: :zelda_storylines

  has_many :zelda_worlds, dependent: :destroy, foreign_key: :game_uuid, primary_key: :game_uuid
  has_many :places, through: :zelda_worlds

  has_many :zelda_mobs, dependent: :destroy, foreign_key: :game_uuid, primary_key: :game_uuid
  has_many :monsters, through: :zelda_mobs

  has_many :bosses, foreign_key: "game_uuid", primary_key: "game_uuid"

  validates :name, presence: true
  validates :developer, presence: true
end
