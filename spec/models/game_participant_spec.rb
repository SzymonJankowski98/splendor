# frozen_string_literal: true

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
#  index_game_participants_on_game_id            (game_id)
#  index_game_participants_on_order_and_game_id  (order,game_id) UNIQUE
#  index_game_participants_on_user_id            (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (game_id => games.id)
#  fk_rails_...  (user_id => users.id)
#
require 'rails_helper'

describe GameParticipant, type: :model do
  subject { game_participant }

  let(:game_participant) { build(:game_participant) }

  describe 'associations' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to belong_to(:game) }
  end

  describe 'validations' do
    describe '#order' do
      it { is_expected.to validate_uniqueness_of(:order).scoped_to(:game_id).allow_nil }
      it { is_expected.to validate_inclusion_of(:order).in_range(1..4) }
    end
  end
end
