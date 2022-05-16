# frozen_string_literal: true

FactoryBot.define do
  factory :card_regular, parent: :card_base, class: 'Card::Regular' do
    sequence(:name) { |n| "card_regular#{n}" }
    type { 'Card::Regular' }
  end
end
