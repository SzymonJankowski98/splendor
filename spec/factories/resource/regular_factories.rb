# frozen_string_literal: true

FactoryBot.define do
  factory :resource_regular, parent: :resource_base, class: 'Resource::Regular' do
    sequence(:name) { |n| "regular_resource#{n}" }
    type { 'Resource::Regular' }
  end
end
