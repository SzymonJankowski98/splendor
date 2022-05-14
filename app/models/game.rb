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
class Game < ApplicationRecord
  belongs_to :users
end
