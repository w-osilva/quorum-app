describe Vote do
  describe 'associations' do
    it do
      expect(subject).to belong_to(:bill)
    end
  end
end
