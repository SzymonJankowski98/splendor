# frozen_string_literal: true

FactoryBot.define do
  factory :card_base, class: 'Card::Base' do
    association :resource

    sequence(:name) { |n| "card#{n}" }
    level { 1 }
    value { 2 }
  end
end
