class ZeldaStoryline < ApplicationRecord
  belongs_to :character, foreign_key: :character_uuid, primary_key: :character_uuid
  belongs_to :game, foreign_key: :game_uuid, primary_key: :game_uuid
end
