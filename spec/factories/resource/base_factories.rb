# frozen_string_literal: true

FactoryBot.define do
  factory :resource_base, class: 'Resource::Base' do
    sequence(:name) { |n| "resource#{n}" }
  end
end
