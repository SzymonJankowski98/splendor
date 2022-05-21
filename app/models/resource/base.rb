# frozen_string_literal: true

module Resource
  class Base < ApplicationRecord
    self.table_name = :resources

    has_many :sources, class_name: 'Card::Regular', foreign_key: :resource_id,
                       dependent: :destroy, inverse_of: :resource
    has_many :card_resources, foreign_key: :resource_id, dependent: :destroy, inverse_of: :resource
    has_many :cards, class_name: 'Card::Regular', foreign_key: :resource_id, through: :card_resources

    validates :name, presence: true, uniqueness: true
  end
end
