namespace :import do
  desc 'Import data from CSV files to database'

  task all: :environment do
    path = Rails.root.join('lib/files')

    puts 'Importing legislators'
    Importers::LegislatorsImportService.call(file: path.join('legislators.csv'))

    puts 'Importing bills'
    Importers::BillsImportService.call(file: path.join('bills.csv'))

    puts 'Importing votes'
    Importers::VotesImportService.call(file: path.join('votes.csv'))

    puts 'Importing vote results'
    Importers::VoteResultsImportService.call(file: path.join('vote_results.csv'))
  end
end
