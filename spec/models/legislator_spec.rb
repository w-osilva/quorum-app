describe Legislator do
  describe 'associations' do
    it do
      expect(subject).to have_many(:bills)
        .class_name('Bill')
        .with_foreign_key('sponsor_id')
        .dependent(:restrict_with_error)
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
  end
end
