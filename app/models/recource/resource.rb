# frozen_string_literal: true

module Resource
  class Base < ApplicationRecord
    self.table_name = :resources
  end
end
