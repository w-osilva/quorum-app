require 'csv'

module Importers
  class LegislatorsImportService < CsvImportService
    def model_class
      Legislator
    end

    def parse_row(row)
      {
        id: Integer(row['id']),
        name: row['name']
      }
    end
  end
end
