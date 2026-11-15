# Salesforce search for agents

MCP for agents that work with Salesforce:

- **Tool `salesforce_search`**: finds accounts, contacts, leads, opportunities, cases, tasks and events by a search term, with SOSL.
- **Resource `salesforce_search_guide`**: what the tool matches and returns, and notes on your org, from `resources/salesforce/search.md`.
- **Prompt `find_customer`**: finds a customer and lists their open deals, cases and recent activity, from `resources/salesforce/find_customer.md`.

## Needs

- The MCP server on.
- The credentials `salesforce`, added in Connections; flowgen commits them encrypted as `credentials/salesforce.yaml`.

## Change it

- Describe your org in the "This org" section of `resources/salesforce/search.md`.
- Edit the `RETURNING` clause in `resources/salesforce/search.sosl` to search other objects or return other fields, and list them in the guide.
- Edit `resources/salesforce/find_customer.md` to change what the prompt asks for.

The search term is escaped, so any input is safe.
