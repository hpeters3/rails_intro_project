class Game < ApplicationRecord
  has_many :zelda_worlds, dependent: :destory
  has_many :places, through: :zelda_worlds

  validates :game_id, presence: true
  validates :name, presence: true
end
