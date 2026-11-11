# Salesforce search for agents

An MCP tool, `salesforce_search`, that finds Salesforce accounts and contacts
by a search term with SOSL. Agents that connect to the MCP server can call it.

## Needs

- The MCP server on.
- `credentials/salesforce.json`, the Salesforce credentials, added in Connections.

## Change it

Edit the `RETURNING` clause of the query to search other objects or return
other fields. The search term is escaped, so any input is safe.
