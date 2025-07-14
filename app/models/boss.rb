class Boss < ApplicationRecord
 self.primary_key = "boss_uuid"

  belongs_to :game, foreign_key: "game_uuid", primary_key: "boss_uuid"

  validates :name, presence: true
  validates :description, presence: true
end
