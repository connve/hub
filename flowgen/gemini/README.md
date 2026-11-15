# Gemini

Google Gemini on the AI gateway as the model `default`. Flowgen Agent and any
other agent that asks for `default` gets an answer from Gemini.

Each request goes to the Gemini model that fits it:

- `gemini-2.5-flash` when the request carries tools or a long prompt.
- `gemini-2.5-flash-lite` for everything else.

A client that wants one model asks for it by name, for example
`default/gemini-2.5-pro`.

## Needs

- The AI gateway on.
- The credentials `gemini`, with the Gemini API key as `api_key`, added in Connections; flowgen commits them encrypted as `credentials/gemini.yaml`.

## Change it

Edit the `route` script to pick models by other rules, or to send some
requests to another provider.
