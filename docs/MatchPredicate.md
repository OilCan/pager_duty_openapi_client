# PagerDutyOpenapiClient::MatchPredicate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **matcher** | **String** | Required if the type is &#x60;contains&#x60;, &#x60;exactly&#x60; or &#x60;regex&#x60;. | [optional] |
| **part** | **String** | The email field that will attempt to use the matcher expression. Required if the type is &#x60;contains&#x60;, &#x60;exactly&#x60; or &#x60;regex&#x60;. |  |
| **children** | [**Array&lt;MatchPredicate&gt;**](MatchPredicate.md) | Additional matchers to be run. Must be not empty if the type is &#x60;all&#x60;, &#x60;any&#x60;, or &#x60;not&#x60;. |  |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::MatchPredicate.new(
  type: null,
  matcher: null,
  part: null,
  children: null
)
```

