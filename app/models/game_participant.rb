# == Schema Information
#
# Table name: game_participants
#
#  id         :bigint           not null, primary key
#  order      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  game_id    :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_game_participants_on_game_id  (game_id)
#  index_game_participants_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (user_id => users.id)
#
class GameParticipant < ApplicationRecord
  belongs_to :users
  belongs_to :game
end
