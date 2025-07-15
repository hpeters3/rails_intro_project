class Boss < ApplicationRecord
 self.primary_key = "boss_uuid"

  belongs_to :game, foreign_key: "boss_uuid", primary_key: "game_uuid", optional: true

  validates :name, presence: true
  validates :description, presence: true
end
