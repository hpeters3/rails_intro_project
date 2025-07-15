class Place < ApplicationRecord
  self.primary_key = "place_uuid"

  has_many :characters, foreign_key: "place_uuid", primary_key: "place_uuid"

  has_many :zelda_worlds, dependent: :destroy, foreign_key: :place_uuid, primary_key: :place_uuid
  has_many :games, through: :zelda_worlds

  validates :name, presence: true
  validates :description, presence: true
end
