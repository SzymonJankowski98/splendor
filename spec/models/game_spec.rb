# frozen_string_literal: true

# == Schema Information
#
# Table name: games
#
#  id          :bigint           not null, primary key
#  invite_code :string
#  players     :integer
#  state       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'

describe Game, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
