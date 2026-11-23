// The body the API gets, from the request's fields.
let request = event.data;
#{
    name: request.name,
    email: request.email,
    source: "webhook"
}
