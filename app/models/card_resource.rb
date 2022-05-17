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
class CardResource < ApplicationRecord
  belongs_to :card, class_name: 'Card::Base'
  belongs_to :resource, class_name: 'Resource::Regular'

  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
