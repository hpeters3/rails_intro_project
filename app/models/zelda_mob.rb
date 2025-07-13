class ZeldaMob < ApplicationRecord
  belongs_to :monster
  belongs_to :game
end
