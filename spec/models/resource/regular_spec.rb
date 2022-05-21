# frozen_string_literal: true

# == Schema Information
#
# Table name: resources
#
#  id         :bigint           not null, primary key
#  name       :string
#  type       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_resources_on_name  (name) UNIQUE
#
require 'rails_helper'

describe Resource::Regular, type: :model do
  it_behaves_like 'resource', 'regular'
end
