# frozen_string_literal: true

module Resource
  class Base < ApplicationRecord
    self.abstract_class = true
    self.table_name = :resources

    has_many :sources, class_name: 'Cards::Regular', foreign_key: :card_id, dependent: :destroy, inverse_of: :resource
    has_many :card_resources, dependent: :destroy
    has_many :cards, class_name: 'Cards::Regular', foreign_key: :card_id, through: :card_resources
  end
end
