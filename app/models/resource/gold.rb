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
module Resource
  class Gold < Resource::Base; end
end
