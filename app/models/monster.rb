class Monster < ApplicationRecord
  has_many :zelda_mobs, dependent: :destory
  has_many :games, through: :zelda_mobs
end
