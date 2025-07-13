class Boss < ApplicationRecord
  belongs_to :game

  validates :boss_id, presence: true
  validates :name, presence: true
end
