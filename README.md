# ClickHouse GitHub Action

This action sets up a ClickHouse server instance
- `clickhouse/clickhouse-server:latest-alpine`

# Usage

```yaml
steps:
  - uses: metrico/clickhouse-server-action@latest
```

## UDF _(experimental)_
Mount UDF XML Functions and Binaries using custom paths:
```
  - env:
      UDF_BIN_PATH=/user_scripts
      UDF_XML_PATH=/user_functions
```

# License

This project released under the [MIT License](LICENSE)
