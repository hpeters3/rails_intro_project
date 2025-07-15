class ZeldaMob < ApplicationRecord
  belongs_to :game, foreign_key: :game_uuid, primary_key: :game_uuid
  belongs_to :monster, foreign_key: :monster_uuid, primary_key: :monster_uuid
end
