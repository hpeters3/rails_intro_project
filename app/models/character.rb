class Character < ApplicationRecord
  belongs_to :place
  validates :character_id, presence: true
  validates :name, presence: true
end
