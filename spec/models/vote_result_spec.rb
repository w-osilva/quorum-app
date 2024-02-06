describe VoteResult do
  describe 'associations' do
    it do
      expect(subject).to belong_to(:vote)
    end

    it do
      expect(subject).to belong_to(:legislator)
    end
  end

  describe 'enums' do
    it do
      expect(subject).to define_enum_for(:vote_type)
        .with_values(yea: 1, nay: 2)
    end
  end
end
