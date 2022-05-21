# frozen_string_literal: true

module Card
  class Base < ApplicationRecord
    self.table_name = :cards

    belongs_to :resource, class_name: 'Resource::Regular'
    has_many :card_resources, foreign_key: :card_id, dependent: :destroy, inverse_of: :card
    has_many :required_resources, class_name: 'Resource::Regular', through: :card_resources, source: :resource

    validates :name, presence: true, uniqueness: true
    validates :level, presence: true, inclusion: 1..3
    validates :value, presence: true, numericality: { greater_than_or_equal_to: 1, only_integer: true }
  end
end
