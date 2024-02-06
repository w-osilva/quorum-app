describe Importers::LegislatorsImportService do
  subject { described_class.new(file: 'example.csv') }

  describe 'inheritance' do
    it do
      expect(described_class).to be < Importers::CsvImportService
    end
  end

  describe '#model_class' do
    it do
      expect(subject.model_class).to eq(Legislator)
    end
  end

  describe '#parse_row' do
    let(:row) do
      {
        'id' => '1',
        'name' => 'John Doe'
      }
    end

    it do
      expect(subject.send(:parse_row, row)).to eq({
        id: Integer('1'),
        name: 'John Doe'
      })
    end
  end
end