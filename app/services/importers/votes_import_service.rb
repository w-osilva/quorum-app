require 'csv'

module Importers
  class VotesImportService < CsvImportService
    def model_class
      Vote
    end

    def parse_row(row)
      {
        id: Integer(row['id']),
        bill_id: Integer(row['bill_id'])
      }
    end
  end
end
