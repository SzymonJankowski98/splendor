# frozen_string_literal: true

FactoryBot.define do
  factory :game_participant do
    association :user
    association :game
  end
end
