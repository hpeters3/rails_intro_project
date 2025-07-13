class Place < ApplicationRecord
  has_many :characters
  has_many :zelda_worlds, dependent: :destory
  has_many :games, through: :zelda_worlds
end
