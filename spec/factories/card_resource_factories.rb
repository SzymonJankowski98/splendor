# frozen_string_literal: true

FactoryBot.define do
  factory :card_resource do
    association :card, factory: :card_regular
    association :resource, factory: :resource_regular
  end
end
