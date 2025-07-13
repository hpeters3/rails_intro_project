class Place < ApplicationRecord
  has_many :characters
  has_many :zelda_worlds, dependent: :destory
  has_many :games, through: :zelda_worlds

  validates :place_id, presence: true
  validates :game_id, presence: true
  validates :name, presence: true
end
