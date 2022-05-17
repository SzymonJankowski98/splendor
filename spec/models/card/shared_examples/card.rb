# frozen_string_literal: true

shared_examples 'card' do |type|
  subject { card }

  let(:card) { build("card_#{type}") }

  describe 'associations' do
    it { is_expected.to belong_to(:resource).class_name('Resource::Regular') }

    it 'has many card_resources' do
      expect(subject).to have_many(:card_resources)
        .with_foreign_key('card_id').dependent(:destroy).inverse_of(:card)
    end

    it 'has many required_resources' do
      expect(subject).to have_many(:required_resources)
        .class_name('Resource::Regular').through(:card_resources).source(:resource)
    end
  end

  describe 'validations' do
    describe '#name' do
      it { is_expected.to validate_presence_of(:name) }
      it { is_expected.to validate_uniqueness_of(:name) }
    end

    describe '#level' do
      it { is_expected.to validate_presence_of(:level) }
      it { is_expected.to validate_inclusion_of(:level).in_range(1..3) }
    end

    describe '#value' do
      it { is_expected.to validate_presence_of(:value) }
      it { is_expected.to validate_numericality_of(:value).is_greater_than_or_equal_to(1).only_integer }
    end
  end
end
