# frozen_string_literal: true

# == Schema Information
#
# Table name: card_resources
#
#  id          :bigint           not null, primary key
#  amount      :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  card_id     :bigint           not null
#  resource_id :bigint           not null
#
# Indexes
#
#  index_card_resources_on_card_id      (card_id)
#  index_card_resources_on_resource_id  (resource_id)
#
# Foreign Keys
#
#  fk_rails_...  (card_id => cards.id)
#  fk_rails_...  (resource_id => resources.id)
#
require 'rails_helper'

describe CardResource, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
