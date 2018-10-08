# People Server

The people server will serve the frontend, process requests from tne frontend, and interact with the database. It will use the types defined in people-lib to handle data.

To deal with requests from the internet, you can use the [rouille](https://github.com/tomaka/rouille) crate. It will accept http requests from the internet, let you run code when they come in, and let you send a response back out.

To handle the database, you can use the [mysql](https://github.com/blackbeam/rust-mysql-simple) crate. It should let you connect to the database and perfom SQL operations.
