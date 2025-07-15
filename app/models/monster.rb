class Monster < ApplicationRecord
  self.primary_key = "monster_uuid"

  has_many :zelda_mobs, dependent: :destroy, foreign_key: :monster_uuid, primary_key: :monster_uuid
  has_many :games, through: :zelda_mobs

  validates :name, presence: true
  validates :description, presence: true
end
