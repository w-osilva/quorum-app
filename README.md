# README

This is a code chllenge purposed by Quorum. 
The challenge consists of creating a simple web application for reading data from CSV and to provide some interface for
the user to interact with the data.

## Dependencies

- Ruby >= 3.3.0
- Bundler >= 2.5.5
- Rails >= 7.1.3

## Installation

Clone the repository or download the zip file and extract it to a folder of your preference.

After that, open a terminal and navigate to the folder where the project is located and run the following commands:

```bash

bundle install && \
bundle exec rails db:create && \
bundle exec rails db:migrate && \
bundle exec rails import:data && \
bundle exec rails server

```
Explanation of the commands:

- `bundle install`: Install all the dependencies of the project.
- `bundle exec rails db:create`: Create the sqlite database.
- `bundle exec rails db:migrate`: Run the migrations to create the tables.
- `bundle exec rails import:data`: Import the data from the CSV files to the database.
- `bundle exec rails server`: Start the web server.

## Usage

After running the server, open your browser and navigate to `http://localhost:3000/` and you will be able to see the web application.

## Development

Running the tests:

```bash
bundle exec rspec
``` 

## Linter

This project uses Rubocop as a linter. To run the linter, use the following command:

```bash
bundle exec rubocop
```