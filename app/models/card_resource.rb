# frozen_string_literal: true

class CardResource < ApplicationRecord
  belongs_to :card
  belongs_to :recource
end
