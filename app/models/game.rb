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
class Game < ApplicationRecord
  INVITE_CODE_LENGTH = 10

  has_many :game_participants, dependent: :destroy
  has_many :card_games, dependent: :destroy
  has_many :cards, class_name: 'Card::Base', through: :card_games

  validates :players, presence: true, inclusion: 2..4
  validates :invite_code, presence: true, uniqueness: true, length: { is: INVITE_CODE_LENGTH }

  before_validation :generate_invite_code, on: :create

  private

  def generate_invite_code
    return if invite_code.present?

    loop do
      self.invite_code = SecureRandom.hex(INVITE_CODE_LENGTH)[...INVITE_CODE_LENGTH]

      break invite_code unless Game.exists?(invite_code: invite_code)
    end
  end
end
