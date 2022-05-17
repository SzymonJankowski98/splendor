# frozen_string_literal: true

FactoryBot.define do
  factory :card_base, class: 'Card::Base' do
    association :resource, factory: :resource_regular

    sequence(:name) { |n| "card#{n}" }
    level { 1 }
    value { 2 }
  end
end
