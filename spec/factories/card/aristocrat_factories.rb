# frozen_string_literal: true

FactoryBot.define do
  factory :card_aristocrat, parent: :card_base, class: 'Card::Aristocrat' do
    sequence(:name) { |n| "card_aristocrat#{n}" }
    type { 'Card::Aristocrat' }
  end
end
