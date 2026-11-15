# Salesforce search

`salesforce_search` finds Salesforce records by a search term.

## How it searches

- The term is matched against every searchable field: names, emails, phone numbers, addresses, subjects and text fields.
- A term matches words that start with it, so `acme` finds `Acme Corp` and `acme.com`.
- A term needs at least 2 characters.
- Several words find records that contain all of them, in any field.
- Each object returns at most 20 records; search more specifically when a list looks cut off.

## What it returns

| Object | Fields |
|---|---|
| Account | `Id`, `Name`, `Type`, `Industry`, `Phone`, `Website` |
| Contact | `Id`, `FirstName`, `LastName`, `Title`, `Email`, `Phone`, `AccountId` |
| Lead | `Id`, `FirstName`, `LastName`, `Company`, `Email`, `Status` |
| Opportunity | `Id`, `Name`, `StageName`, `Amount`, `CloseDate`, `AccountId` |
| Case | `Id`, `CaseNumber`, `Subject`, `Status`, `Priority`, `AccountId`, `ContactId` |
| Task | `Id`, `Subject`, `Status`, `ActivityDate`, `WhoId`, `WhatId` |
| Event | `Id`, `Subject`, `StartDateTime`, `EndDateTime`, `WhoId`, `WhatId` |

- `AccountId` and `ContactId` point to an account and a contact.
- On a task or event, `WhoId` is the contact or lead it is about, and `WhatId` the account, opportunity or case it belongs to.
- A lead is a person not yet converted to a contact; the same person can appear as both.
- An empty result means nothing matched; try a shorter term, a different spelling, or an email domain.

## Tips

- Search by email or email domain to find a person or the people at a company.
- To see everything about a customer, search the company name, then use the `Id`s to connect contacts, opportunities, cases and activities to the account.
- `Id` identifies a record in Salesforce; quote it when you refer to a record.

## This org

Describe your org here: what the records stand for, stages and statuses in use, naming conventions, custom fields worth knowing, and anything an agent should not do.
