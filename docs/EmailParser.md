# PagerDutyOpenapiClient::EmailParser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  |  |
| **match_predicate** | [**MatchPredicate**](MatchPredicate.md) |  |  |
| **value_extractors** | [**Array&lt;EmailParserValueExtractorsInner&gt;**](EmailParserValueExtractorsInner.md) | Additional values that will be pulled in to the Incident object. Exactly one value extractor must have a &#x60;value_name&#x60; of &#x60;incident_key&#x60;. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::EmailParser.new(
  action: null,
  match_predicate: null,
  value_extractors: null
)
```

