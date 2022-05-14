# frozen_string_literal: true

class CardResource < ApplicationRecord
  belongs_to :card, class_name: 'Card::Base'
  belongs_to :resource, class_name: 'Resource::Regular'
end
