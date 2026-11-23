# Changelog

## 2026-11-19

### Added

- flowgen templates `http_endpoint`, an HTTP endpoint that sends what it receives on to an API, and `http_request`, which reads an API on a schedule.
- Pull requests and releases run `flowgen validate` on each template and `flowgen test` on each script with its samples in `tests/`; a release publishes only a catalog that passes. The check runs the latest flowgen release only after `gh attestation verify` shows connve/flowgen's release workflow built it.
- The templates are licensed under the Mozilla Public License 2.0.

## 2026-11-18

### Added

- flowgen templates `gemini` and `salesforce_sosl_mcp`.
- Each push to `main` publishes the flowgen catalog to `ghcr.io/connve/hub/flowgen`, tagged `latest`, with the version from this file's newest heading (`2026.11.18`) and with its commit.
