# frozen_string_literal: true

# == Schema Information
#
# Table name: card_games
#
#  id                  :bigint           not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  card_id             :bigint           not null
#  game_id             :bigint           not null
#  game_participant_id :bigint           not null
#
# Indexes
#
#  index_card_games_on_card_id              (card_id)
#  index_card_games_on_game_id              (game_id)
#  index_card_games_on_game_participant_id  (game_participant_id)
#
# Foreign Keys
#
#  fk_rails_...  (card_id => cards.id)
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (game_participant_id => game_participants.id)
#
class CardGame < ApplicationRecord
  belongs_to :card, class_name: 'Card::Base'
  belongs_to :game
  belongs_to :game_participant, optional: true
end
