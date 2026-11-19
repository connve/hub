# HTTP endpoint

An HTTP endpoint that passes what it receives on to an API:

- **Endpoint `POST /webhook`**: takes a JSON request with a bearer token.
- **Script**: maps the request's fields to the body the API expects, in `resources/http/to_request.rhai`.
- **Request**: sends the body to the API and returns its response to the caller.

## Needs

- The HTTP server on.
- The credentials `http_endpoint`, the token callers send, and `http_endpoint_api`, the API's token or login, added in Connections.

## Change it

- Set `endpoint` of the `send` task to your API's URL, and `method` if it isn't `POST`.
- Map your fields in `resources/http/to_request.rhai`: the request is `event.data`, and what the script returns is the body sent.
- Rename `/webhook` to a path that says what it receives, such as `/orders`.

## Try it

```bash
curl -X POST http://127.0.0.1:3000/api/flowgen/workers/v1/webhook \
  -H "Authorization: Bearer <token in http_endpoint>" \
  -H "Content-Type: application/json" \
  -d '{"name": "Ada", "email": "ada@example.com"}'
```
