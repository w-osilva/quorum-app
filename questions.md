# Questions

After completing your implementation, you should include a write up that answers the following
questions:

1. Discuss your strategy and decisions implementing the application. Please, consider time
   complexity, effort cost, technologies used and any other variable that you understand
   important on your development process.
2. How would you change your solution to account for future columns that might be
   requested, such as “Bill Voted On Date” or “Co-Sponsors”?
3. How would you change your solution if instead of receiving CSVs of data, you were given a
   list of legislators or bills that you should generate a CSV for?
4. How long did you spend working on the assignment?

## Answers

### Question 1
I have chosen Ruby on Rails as framework for developing the challenge once I feel confident with the tool and it would make development faster. I decided to work a maximum of 8 hours on this project, so **speed** was the most important factor I considered.  

I tried to be **concise**, delivering a **high quality** and **tested** application, implementing code that would be applied in systems of the real world.
As example, I can highlight the importer process, where I applied an upsert in batches, reducing the number of transactions in the database. These Importers could be easily used to import huge CSV files.

### Question 2

For bringing the “Bill Voted On Date” information I would add a new column in votes  table recording the date when the vote was created.  

For recording “Co-Sponsors” of a Bill, I would change to N:N the relation between bills and legislators through of a new table bill_sponsors . I also would add a column in this new table for identify if sponsor_type (primary, co-sponsor).

| id (Integer) | bill_id (Integer) | sponsor_id (Integer) | sponsor_type (Integer) |
| --- | --- | --- | --- |
| 1 | 9990 | 400010 | 1 (primary-sponsor) |
| 2 | 9993 | 510050 | 2 (co-sponsor) |

### Question 3

If I needed to change the project to export CSVs instead to read them, I would develop a generic csv exporter to be reused in all entities of the project.

Internally, the application is ready to load data and deliver the response in different formats. I have applied this approach in `controllers` and the user can choose the format adding it on url. Examples:

- http://localhost:3000/legislators
- http://localhost:3000/legislators.json
- http://localhost:3000/legislators.csv

### Question 4

My work journal:

**Friday 2024-02-02**

- I worked 2 hours creating the rails-application, reading the challenge and planning how to work on the solution.

**Monday 2024-02-05**

- I worked 2 hours developing the database migrations, models and importers. I also developed its tests.
- I spent 1 hour writing the answers for the challenge questions, and recording my progress.

**Tuesday 2024-02-06**

- In the morning, I worked around 2 hours developing the controllers, routes and views for rendering the responses in different formats.
- I also added the documentation with the instructions for running the application.
- At night, I spent more 1 hour styling the views with *Pure-Css* system design.
- I also have reviewed the docs and finished this text before wrapping up everything and deliver the challenge.