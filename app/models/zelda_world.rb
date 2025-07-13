class ZeldaWorld < ApplicationRecord
  belongs_to :game
  belongs_to :project
end
