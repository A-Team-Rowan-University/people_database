#[macro_use]
extern crate rouille;

use rouille::Request;
use rouille::Response;

fn main() {
    rouille::start_server("localhost:8000", move |request| {
        //data base connection

        handler(request)
    });
}

fn handler(request: &Request) -> Response {
    router!(request,
            (POST) ["/api/v1/users"] => {
                //my sql code
                Response::text("if your seeing this nothing was begin done with your data")
            },
            (GET) ["/api/v1/users"] => {
                //my sql code
                Response::text("if your seeing this nothing was begin done with your data")
            },
            (PUT) ["/api/v1/users"] => {
                //my sql code
                Response::text("if your seeing this nothing was begin done with your data")
            },
            (DELETE) ["/api/v1/users"] => {
                // my sql code
                Response::text("if your seeing this nothing was begin done with your data")
            },
            _ => {Response::text("if your seeing this nothing was begin done with your data")}
           )
}
