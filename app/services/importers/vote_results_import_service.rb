require 'csv'

module Importers
  class VoteResultsImportService < CsvImportService
    def model_class
      VoteResult
    end

    def parse_row(row)
      {
        id: Integer(row['id']),
        vote_id: Integer(row['vote_id']),
        legislator_id: Integer(row['legislator_id']),
        vote_type: Integer(row['vote_type'])
      }
    end
  end
end
