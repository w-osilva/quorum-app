describe Importers::CsvImportService do
  subject { described_class.new(file: 'example.csv') }

  describe '#call' do
    let(:model_class) { double }
    let(:batch) do
      [
        { 'id' => '1', 'name' => 'John Doe' },
        { 'id' => '2', 'name' => 'Jane Doe' }
      ]
    end

    before do
      allow(CSV).to receive(:foreach)
                      .with('example.csv', headers: true)
                      .and_yield(batch[0])
                      .and_yield(batch[1])
      allow(subject).to receive(:model_class)
                          .and_return(model_class)
      allow(model_class).to receive(:upsert_all)
    end

    it 'calls upsert_all on the model' do
      subject.call
      expect(model_class).to have_received(:upsert_all)
                         .with(batch, unique_by: :id)
    end
  end
end