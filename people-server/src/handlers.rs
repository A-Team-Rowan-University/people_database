
#![cfg!(test)]
mod test {

    use database_lib::vec_table::VecTable;
    use people_lib::user::User;

    #[test]
    fn test_get_users() {
        let table = vec_table::new();

        let user = User {
            first_name: "tim".to_string(),
            last_name: "hollabaugh".to_string(),
            email: "hollabaut1@students.rowan.edu".to_string(),
            banner_id: "123456789".to_string(),
        }

        table.insert(user);
    }
}
