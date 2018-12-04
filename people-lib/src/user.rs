use std::fmt::Display;
use std::fmt;
use std::str::FromStr;

use database_lib::interface::Entry;
use database_lib::interface::Value;
use database_lib::interface::FieldName;

#[derive(Debug, Clone)]
pub struct User {
    pub first_name: String,
    pub last_name: String,
    pub email: String,
    pub banner_id: String
}

#[derive(PartialEq, Clone, Copy, Debug)]
pub enum UserFields {
    FirstName,
    LastName,
    Email,
    BannerID
}

impl FieldName for UserFields {}

impl Display for UserFields {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        match self {
            UserFields::FirstName => write!(f, "First Name"),
            UserFields::LastName => write!(f, "Last Name"),
            UserFields::Email => write!(f, "Email"),
            UserFields::BannerID => write!(f, "BannerID")
        }
    }
}

impl FromStr for UserFields {
    type Err = String;

    fn from_str(s: &str) -> Result<Self, Self::Err> {
        match s {
            "First Name" => Ok(UserFields::FirstName),
            "Last Name" => Ok(UserFields::LastName),
            "Email" => Ok(UserFields::Email),
            "Banner ID" => Ok(UserFields::BannerID),
            _ => Err("Field does not exist".to_string()),
        }
    }
}

impl Entry for User {

    type FieldNames = UserFields;

    fn from_fields(values: &[Value]) -> Result<Self, String> {
        if let Value::String(ref first_name) = values[0] {
            if let Value::String(ref last_name) = values[1] {
                if let Value::String(ref email) = values[2] {
                    if let Value::String(ref banner_id) = values[3] {
                        Ok(User {
                            first_name: first_name.clone(),
                            last_name: last_name.clone(),
                            email: email.clone(),
                            banner_id: banner_id.clone()
                        })
                    } else {
                        Err("Incorrect type for banner ID. Should be String".to_string())
                    }    
                } else {
                    Err("Incorrect type for email. Should be String".to_string())
                }
            } else {
                Err("Incorrect type for last name. Should be String".to_string())
            }
        } else {
            Err("Incorrect type for first name. Should be String".to_string())
        }
    }

    fn get_field_names() -> Vec<Self::FieldNames> {
        vec![UserFields::FirstName, UserFields::LastName, UserFields::Email, UserFields::BannerID]
    }

    fn get_fields(&self) -> Vec<Value> {
        vec![Value::String(self.first_name.clone()), 
            Value::String(self.last_name.clone()), 
            Value::String(self.email.clone()), 
            Value::String(self.banner_id.clone())]
    }

    fn get_field(&self, field_name: UserFields) -> Option<Value> {
        match field_name {
            UserFields::FirstName => Some(Value::String(self.first_name.clone())),
            UserFields::LastName => Some(Value::String(self.last_name.clone())),
            UserFields::Email => Some(Value::String(self.email.clone())),
            UserFields::BannerID => Some(Value::String(self.banner_id.clone()))
        }
    }
}

#[cfg(test)]
mod user_tests {

    use std::str::FromStr;

    use user::UserFields;
    use user::User;

    use database_lib::interface::Entry;
    use database_lib::interface::Value;

    #[test]
    fn test_userfields_from_str() {
        let firstname_field = UserFields::from_str("First Name");
        assert_eq!(firstname_field, Ok(UserFields::FirstName));

        let lastname_field = UserFields::from_str("Last Name");
        assert_eq!(lastname_field, Ok(UserFields::LastName));

        let email_field = UserFields::from_str("Email");
        assert_eq!(email_field, Ok(UserFields::Email));

        let bannerid_field = UserFields::from_str("Banner ID");
        assert_eq!(bannerid_field, Ok(UserFields::BannerID));
    }

    #[test]
    fn test_user_from_fields() {
        let fields = [
            Value::String("The Sexy Alpaca".to_string()),
            Value::String("Lasagna".to_string()),
            Value::String("pigwert1@live.com".to_string()),
            Value::String("19191919191".to_string())
        ];

        let user = User::from_fields(&fields).unwrap();

        assert_eq!(user.first_name, "The Sexy Alpaca".to_string());
        assert_eq!(user.last_name, "Lasagna".to_string());
        assert_eq!(user.email, "pigwert1@live.com".to_string());
        assert_eq!(user.banner_id, "19191919191".to_string());
    }

    #[test]
    fn test_user_get_field_names() {
        let field_names = User::get_field_names();

        assert_eq!(field_names[0], UserFields::FirstName);
        assert_eq!(field_names[1], UserFields::LastName);
        assert_eq!(field_names[2], UserFields::Email);
        assert_eq!(field_names[3], UserFields::BannerID);
        assert_eq!(field_names.len(), 4);
    }

    #[test]
    fn test_user_get_fields() {
        let user = User {
            first_name: "Woo".to_string(),
            last_name: "Lee".to_string(),
            email: "leew8@students.rowan.edu".to_string(),
            banner_id: "4".to_string()
        };

        let fields = user.get_fields();

        assert_eq!(fields[0], Value::String("Woo".to_string()));
        assert_eq!(fields[1], Value::String("Lee".to_string()));
        assert_eq!(fields[2], Value::String("leew8@students.rowan.edu".to_string()));
        assert_eq!(fields[3], Value::String("4".to_string()));
        assert_eq!(fields.len(), 4);
    }

    #[test]
    fn test_user_get_field() {
        let user = User {
            first_name: "Liz".to_string(),
            last_name: "Am".to_string(),
            email: "lizzie0602@live.com".to_string(),
            banner_id: "917225846".to_string()
        };

        let first_name = user.get_field(UserFields::FirstName);

        assert_eq!(first_name, Some(Value::String("Liz".to_string())));
    }
}
