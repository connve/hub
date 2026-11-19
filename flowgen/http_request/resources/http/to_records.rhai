// The records to pass on, from the API's response.
let response = event.data;
#{ records: response.items ?? [] }
