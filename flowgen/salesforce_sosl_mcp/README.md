# Salesforce search for agents

MCP for agents that work with Salesforce:

- **Tool `salesforce_search`**: finds accounts, contacts, leads, opportunities, cases, tasks and events by a search term, with SOSL.
- **Instructions**: what the tool matches and returns, from `resources/salesforce/instructions.md`. Agents connected to `/mcp/v1/salesforce` or `/mcp/v1` get them when they connect.
- **Prompt `find_customer`**: finds a customer and lists their open deals, cases and recent activity, from `resources/salesforce/find_customer.md`.

## Needs

- The MCP server on.
- The credentials `salesforce`, added in Connections; flowgen commits them encrypted as `credentials/salesforce.yaml`.

## Change it

- Add what agents should know about your org to `resources/salesforce/instructions.md`: what the records stand for, stages and statuses in use, custom fields worth knowing, and what not to do. Keep it short; every agent session gets it.
- Edit the `RETURNING` clause in `resources/salesforce/search.sosl` to search other objects or return other fields, and list them in the instructions.
- Edit `resources/salesforce/find_customer.md` to change what the prompt asks for.

The search term is escaped, so any input is safe.
