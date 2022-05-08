# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Homes', type: :request do
  describe 'GET /index' do
    it 'get index page' do
      get root_path
      expect(response).to be_successful
    end
  end
end
