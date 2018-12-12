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
            (POST) ["/users"] => {
                Response::text("501: Not implemented").with_status_code(501)
            },
            (GET) ["/users"] => {
                Response::text("501: Not implemented").with_status_code(501)
            },
            (PUT) ["/users"] => {
                Response::text("501: Not implemented").with_status_code(501)
            },
            (DELETE) ["/users"] => {
                Response::text("501: Not implemented").with_status_code(501)
            },
            _ => {
                eprintln!("not found: {:?}", request);
                Response::text("404: Not found").with_status_code(404)
            }
           )
}
