## Project Description
Imagine that your organization has just acquired a new company.  Unfortunately, the company has never stored their data in a database and instead uses a plain text file.  We need to create a way for the new subsidiary to import their data into a database.

Here's what your web-based application must do:

1. Your app must accept (via a form) a tab delimited file with the following columns: purchaser name, item description, item price, purchase count, merchant address, and merchant name.  You can assume the columns will always be in that order, that there will always be data in each column, and that there will always be a header line.  An example input file named example_input.tab is included in this repo.
2. Your app must parse the given file, normalize the data, and store the information in a relational database.
3. After upload, your application should display the total amount gross revenue represented by the uploaded file.

Your application does not need to:

1. handle authentication or authorization (bonus points if it does, extra bonus points if authentication is via OpenID)
2. be aesthetically pleasing

Your application should be easy to set up and should run on either Linux or Mac OS X.  It should not require any for-pay software.


# Instructions
1. The app was developed with Ruby 2.2.0 and Rails 4.2.0. Make sure you have them installed.
2. Pull the code to your local system.
3. Verify that you're using the correct Ruby and Rails versions.
4. Run "Bundle" to setup the appropriate gems.
5. Run "bundle exec db:migrate" to setup the database.
6. Startup the rails server by running "bundle exec rails s"
7. Access the site at "http://localhost:3000"
8. On the displayed screen select a file then select the upload button.
9. See "TaDa" appear.

## Thoughts
This code sample has no testing to speak of. It is just a quick solution.



