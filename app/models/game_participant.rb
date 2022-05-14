class GameParticipant < ApplicationRecord
  belongs_to :users
  belongs_to :game
end
