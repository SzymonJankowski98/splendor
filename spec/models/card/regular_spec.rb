# frozen_string_literal: true

# == Schema Information
#
# Table name: cards
#
#  id          :bigint           not null, primary key
#  level       :integer
#  name        :string
#  state       :string
#  type        :string           not null
#  value       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  resource_id :bigint           not null
#
# Indexes
#
#  index_cards_on_resource_id  (resource_id)
#
# Foreign Keys
#
#  fk_rails_...  (resource_id => resources.id)
#
require 'rails_helper'

describe Card::Regular, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
