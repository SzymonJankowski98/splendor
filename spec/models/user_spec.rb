# frozen_string_literal: true

require 'rails_helper'

describe User, type: :model do
  let(:user) { build(:user) }

  describe '#validations' do
    describe '#email' do
      it 'valid with uniqueue email' do
        expect(user).to be_valid
      end

      it 'invalid without email' do
        user.email = nil
        expect(user).not_to be_valid
      end

      it 'invalid with not unique email' do
        create(:user, email: 'test.email@test.com')
        user.email = 'test.email@test.com'
        expect(user).not_to be_valid
      end
    end
  end
end
