# frozen_string_literal: true

FactoryBot.define do
  factory :card_game do
    association :card, factory: :card_regular
    association :game
  end
end
