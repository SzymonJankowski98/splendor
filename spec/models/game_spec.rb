# frozen_string_literal: true

# == Schema Information
#
# Table name: games
#
#  id          :bigint           not null, primary key
#  invite_code :string
#  players     :integer
#  state       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_games_on_invite_code  (invite_code) UNIQUE
#
require 'rails_helper'

describe Game, type: :model do
  subject { game }

  let(:game) { build(:game) }

  describe 'associations' do
    it { is_expected.to have_many(:card_games).dependent(:destroy) }
    it { is_expected.to have_many(:cards).through(:card_games).class_name('Card::Base') }
    it { is_expected.to have_many(:game_participants).dependent(:destroy) }
  end

  describe 'validations' do
    describe '#players' do
      it { is_expected.to validate_presence_of(:players) }
      it { is_expected.to validate_inclusion_of(:players).in_range(2..4) }
    end

    describe '#invite_code' do
      before { game.save }

      it { is_expected.to validate_presence_of(:invite_code) }
      it { is_expected.to validate_uniqueness_of(:invite_code) }
      it { is_expected.to validate_length_of(:invite_code).is_equal_to(Game::INVITE_CODE_LENGTH) }
    end
  end

  describe 'callbacks' do
    describe '#generate_invite_code' do
      it 'generates valid code' do
        game.invite_code = nil
        game.save
        expect(game.invite_code).not_to be_nil
        expect(game).to be_valid
      end

      it 'leave passed code' do
        game.invite_code = 'code'
        game.save
        expect(game.invite_code).not_to be_nil
      end
    end
  end
end
