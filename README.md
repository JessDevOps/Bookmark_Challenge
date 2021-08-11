### To set up the database

 Connect to `psql` and create the `bookmark_manager` database:

 ```
 CREATE DATABASE bookmark_manager;
 ```

 To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

 ### To run the Bookmark Manager app:

 ```
 rackup -p 3000
 ```

 To view bookmarks, navigate to `localhost:3000/bookmarks`
 To view bookmarks, navigate to `localhost:3000/bookmarks`.

 ### To run tests:

```
rspec
```
### To run linting:
```
rubocop


As a user so that I can access a list of bookmarks
I want to see a list of bookmarks 

alias user="User"
alias server="Server"
alias client="Client"

user->client:"navigate to /bookmark page"
client->server:"get request to get list of bookmarks"
server->client:"successful message 200 OK"
client->user:"displays a list of bookmarks

#01. Connect to psql
#02. Create the database using the psql command CREATE DATABASE bookmark_manager;
#03. Connect to the database using the pqsl command \c bookmark_manager;
#04. Run the query we have saved in the file 01_create_bookmarks_table.sql