describe Bill do
  describe 'associations' do
    it do
      expect(subject).to belong_to(:sponsor)
        .class_name('Legislator')
    end
  end

  describe 'validations' do
    it { is_expected.to validate_presence_of(:title) }
  end
end
