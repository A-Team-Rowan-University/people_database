#[macro_use]
extern crate rouille;

use rouille::Request;
use rouille::Response;

fn main() {
    rouille::start_server("0.0.0.0:8080", move |request| {
        handler(request)
    });
}

fn handler(request: &Request) -> Response {
    router!(request,
            (POST) ["/api/v1/users"] => {
                Response::text("501: Not implemented").with_status_code(501)
            },
            (GET) ["/api/v1/users"] => {
                Response::text("501: Not implemented").with_status_code(501)
            },
            (PUT) ["/api/v1/users"] => {
                Response::text("501: Not implemented").with_status_code(501)
            },
            (DELETE) ["/api/v1/users"] => {
                Response::text("501: Not implemented").with_status_code(501)
            },
            _ => {
                Response::text("404: Not found").with_status_code(404)
            }
           )
}
