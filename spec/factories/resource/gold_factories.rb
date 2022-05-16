# frozen_string_literal: true

FactoryBot.define do
  factory :resource_gold, parent: :resource_base, class: 'Resource::Gold' do
    name { 'gold' }
    type { 'Resource::Gold' }
  end
end
