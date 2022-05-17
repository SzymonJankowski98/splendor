# frozen_string_literal: true

shared_examples 'resource' do |type|
  subject { resource }

  let(:resource) { build("resource_#{type}") }

  describe 'associations' do
    it 'has many sources' do
      expect(subject).to have_many(:sources)
        .class_name('Card::Regular').with_foreign_key('resource_id').dependent(:destroy).inverse_of(:resource)
    end

    it 'has many card_resources' do
      expect(subject).to have_many(:card_resources)
        .with_foreign_key('resource_id').dependent(:destroy).inverse_of(:resource)
    end

    it 'has many cards' do
      expect(subject).to have_many(:cards)
        .class_name('Card::Regular').with_foreign_key('resource_id').through(:card_resources)
    end
  end

  describe 'validations' do
    describe '#name' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_uniqueness_of(:name) }
    end
  end
end
