# pager-duty-openapi-client

This repo contains a Ruby client for the PagerDuty REST API that is
generated from their OpenAPI V3 schema.

## Requirements

You'll need [`openapi-generator-cli`](https://openapi-generator.tech/)
which can be installed via Homebrew, or is already in `flake.nix`.

## Updating OpenApi schema

```
curl https://raw.githubusercontent.com/PagerDuty/api-schema/main/reference/REST/openapiv3.json > openapiv3.json
```

## Regenerating the client

```
openapi-generator-cli generate -g ruby -i openapiv3.json -o . --skip-validate-spec
```

Note: We use `--skip-validate-spec` because there are some errors otherwise during generation.

