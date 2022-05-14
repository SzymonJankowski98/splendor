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
require 'rails_helper'

describe Resource::Regular, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
