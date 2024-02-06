class ApplicationController < ActionController::Base
  protected

  def render_csv(collection, filename:)
    require 'csv'

    data = CSV.generate do |csv|
      csv << collection.column_names

      collection.find_each do |record|
        csv << record.attributes.values
      end
    end

    send_data(data, filename: filename, type: 'text/csv', disposition: 'attachment')
  end

  def render_json(collection, **)
    render(json: collection, **)
  end
end
