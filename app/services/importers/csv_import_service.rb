require 'csv'

module Importers
  class CsvImportService
    def self.call(**)
      new(**).call
    end

    def initialize(file:, batch_size: 100, **)
      @file = file
      @batch_size = batch_size
    end

    def call
      import
    end

    private

    def import
      CSV.foreach(@file, headers: true) do |row|
        batch << parse_row(row.to_h.with_indifferent_access)

        if batch.size >= @batch_size
          save_batch
          reset_batch
        end
      end

      save_batch if batch.any? # ensure the last batch is saved
    end

    def batch
      @batch ||= []
    end

    def reset_batch
      @batch = []
    end

    def save_batch
      model_class.upsert_all(batch, unique_by: :id)
    rescue StandardError => e
      Rails.logger.debug e.message
    end

    def parse_row(row)
      row
    end

    def model_class
      raise NotImplementedError
    end
  end
end
