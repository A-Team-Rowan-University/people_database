
use table::Table;
use database::Database;

pub struct UserKey([u8; 10]);

pub struct UserTable<D: Database> {
    database: D
}

impl<D: Database> UserTable<D> {
    pub fn new(database: D) -> UserTable<D> {
        UserTable { database }
    }
}

impl<D: Database> Table for UserTable<D> {
    type Key = UserKey;
    type Value = User;

    fn lookup(&self, key: UserKey) -> User {
        unimplemented!();
    }
}

pub struct User {
    key: UserKey,

    firstname: String,
    lastname: String,
    email: String,
    banner_id: [u8; 9],
}

