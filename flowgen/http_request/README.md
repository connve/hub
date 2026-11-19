# HTTP request

Reads an API every five minutes, on one pod at a time:

- **Schedule**: `generate` fires every `5m`.
- **Request**: reads the API with the token or login in `http_request_api`.
- **Script**: picks the records from the response, in `resources/http/to_records.rhai`.
- **Log**: shows the records, to replace with where they should go.

## Needs

- The credentials `http_request_api`, the API's token or login, added in Connections.

## Change it

- Set `endpoint` of the `fetch` task to your API's URL, and `interval` of `tick` to how often to read it.
- Pick the records in `resources/http/to_records.rhai`: the response is `event.data`.
- Replace the `log` task with where the records go, such as a database, a queue or another API.

A run that fails is retried at the next tick, so write the records where a second copy updates the first, such as an upsert by key.
