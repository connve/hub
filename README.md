# CONNVE hub

Templates to start from. flowgen lists them under Templates in its web UI and to Flowgen Agent.

Each folder under `flowgen/` is a template: a `template.yaml`, a `README.md`, and the `flows/` and `resources/` it adds to a workspace. Each script `resources/<path>.rhai` has samples of the events it gets in `tests/<path>.ndjson`, one `event.data` per line; they stay out of the workspace.

Pull requests and releases check the catalog with the latest flowgen: `flowgen validate` on each template, and `flowgen test` on each script with its samples.

A push to `main` publishes the catalog to `ghcr.io/connve/hub/flowgen:latest`, which every flowgen workspace reads. It's also tagged with its version, the date of the newest `CHANGELOG.md` heading (`## 2026-11-18` is `2026.11.18`, a second release that day `## 2026-11-18.2`), and with its commit.

## License

Licensed under the [Mozilla Public License 2.0](LICENSE).
