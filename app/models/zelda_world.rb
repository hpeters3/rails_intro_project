class ZeldaWorld < ApplicationRecord
  belongs_to :game, foreign_key: :game_uuid, primary_key: :game_uuid
  belongs_to :place, foreign_key: :place_uuid, primary_key: :place_uuid
end
