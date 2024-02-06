require 'csv'

module Importers
  class BillsImportService < CsvImportService
    def model_class
      Bill
    end

    def parse_row(row)
      {
        id: Integer(row['id']),
        title: row['title'],
        sponsor_id: Integer(row['sponsor_id'])
      }
    end
  end
end
