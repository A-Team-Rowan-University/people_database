//Actual publish version
#[macro_use]
extern crate rouille;

use rouille::Response;
use rouille::Request;

fn main() {
    

        rouille::start_server("localhost:8000", move |request|{

            //data base connection

            handler(request)

        });  
}

fn handler (request: &Request,) -> Response {
    use rouille::Response; 
        router!(request,
            (CREATE) ["user/create"] => {
                //my sql code
                Response::text("if your seeing this nothing was begin done with your data")
            },
            (READ) ["/user/read"] => {
                //my sql code
                Response::text("if your seeing this nothing was begin done with your data")
            },
            (UPDATE) ["/user/update"] => {
                //my sql code
                Response::text("if your seeing this nothing was begin done with your data")
            },
            (DELETE) ["user/delete"] => {
                // my sql code
                Response::text("if your seeing this nothing was begin done with your data")
            },
            _ => {Response::text("if your seeing this nothing was begin done with your data")}
            )
}
