# frozen_string_literal: true

class CardsResource < ApplicationRecord
  belongs_to :card
  belongs_to :recource
end
