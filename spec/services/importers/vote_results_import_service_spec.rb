describe Importers::VoteResultsImportService do
  subject { described_class.new(file: 'example.csv') }

  describe 'inheritance' do
    it do
      expect(described_class).to be < Importers::CsvImportService
    end
  end

  describe '#model_class' do
    it do
      expect(subject.model_class).to eq(VoteResult)
    end
  end

  describe '#parse_row' do
    let(:row) do
      {
        'id' => '1',
        'vote_id' => '3',
        'legislator_id' => '4',
        'vote_type' => '1'
      }
    end

    it do
      expect(subject.send(:parse_row, row)).to eq({
        id: Integer('1'),
        vote_id: Integer('3'),
        legislator_id: Integer('4'),
        vote_type: Integer('1')
      })
    end
  end
end