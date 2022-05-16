# frozen_string_literal: true

FactoryBot.define do
  factory :card_game do
    association :card
    association :game
  end
end
