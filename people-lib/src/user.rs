
pub struct UserKey([u8; 10]);

pub struct User {
    key: UserKey,

    firstname: String,
    lastname: String,
    email: String,
    banner_id: [u8; 9],
}

impl User {
    
}
