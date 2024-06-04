# OpenapiClient::GetAnalyticsIncidents200ResponseFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at_start** | **String** | The lower boundary for the created_at range filter applied to the results. | [optional] |
| **created_at_end** | **String** | The upper boundary for the created_at range filter applied to the results. | [optional] |
| **urgency** | **String** | The urgency filter applied to the results. | [optional] |
| **major** | **Boolean** | The [major incident](https://support.pagerduty.com/docs/operational-reviews#major-incidents) filter applied to the results. | [optional] |
| **team_ids** | **Array&lt;String&gt;** | The team_ids filter applied to the results. | [optional] |
| **service_ids** | **Array&lt;String&gt;** | The service_ids filter applied to the results. | [optional] |
| **priority_ids** | **Array&lt;String&gt;** | The priority_ids filter applied to the results. | [optional] |
| **priority_names** | **Array&lt;String&gt;** | The priority_names filter applied to the results. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetAnalyticsIncidents200ResponseFilters.new(
  created_at_start: null,
  created_at_end: null,
  urgency: null,
  major: null,
  team_ids: null,
  service_ids: null,
  priority_ids: null,
  priority_names: null
)
```

