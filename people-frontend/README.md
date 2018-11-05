# People Frontend

This is the web based frontend for the people database. It will be able to show people's information, search people, and edit information. This will get served by the people-server, and will use people-server to get information from the database.

This will inlcude all the html, css, javascript, images, and anything else that needs to be served.

## Setup


## Testing
Testing requires Nodejs and MariaDB (or MySQL) to be installed.

1. Create a 'mario' database for testing
```
# mysql -u root -p

    MariaDB [(none)]> CREATE DATABASE mario; \q;

# cd test
# mysql -u root -p -D mario < mario.sql

```

2. Configure the test server
```
# npm install
```

Edit `routes/people.js` to use your database's password:
```
4| const conn = mysql.createPool({
5|   host: "localhost",
6|   user: "root",
7|   password: "mysecretpassword" // change this password
8|   database: "mario"
9| })
```

3. Running the test server
```
# npm test
```
Open [localhost:3000](http://localhost:3000) in a web browser to demo.
