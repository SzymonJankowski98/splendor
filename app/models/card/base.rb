# frozen_string_literal: true

module Card
  class Base < ApplicationRecord
    belongs_to :user
  end
end
