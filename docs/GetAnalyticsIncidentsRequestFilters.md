# OpenapiClient::GetAnalyticsIncidentsRequestFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at_start** | **String** | Filters the result, showing only the incidents where the creation timestamp is greater than the filter value. | [optional] |
| **created_at_end** | **String** | Filters the result, showing only the incidents where the creation timestamp is less than the filter value. | [optional] |
| **urgency** | **String** | Filters the result, showing only the incidents where urgency matches the filter value. | [optional] |
| **major** | **Boolean** | An incident is classified as a [major incident](https://support.pagerduty.com/docs/operational-reviews#major-incidents) if it has one of the two highest priorities, or if multiple responders are added and acknowledge the incident. | [optional] |
| **team_ids** | **Array&lt;String&gt;** | An array of team IDs. Only incidents that are assigned to a member of these teams will be returned. Account must have the teams ability to use this parameter. | [optional] |
| **service_ids** | **Array&lt;String&gt;** | An array of service IDs. Only results related to these services will be returned. | [optional] |
| **priority_ids** | **Array&lt;String&gt;** | The priority_ids filter applied to the results. | [optional] |
| **priority_names** | **Array&lt;String&gt;** | The priority_names filter applied to the results. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetAnalyticsIncidentsRequestFilters.new(
  created_at_start: 2023-05-01T00:00:00-04:00,
  created_at_end: 2023-06-01T00:00:00-04:00,
  urgency: high,
  major: true,
  team_ids: [&quot;P373JQQ&quot;,&quot;PAECHJV&quot;,&quot;P7SYGW6&quot;],
  service_ids: [&quot;PC8O0L3&quot;,&quot;PX01HJD&quot;,&quot;P5FK83M&quot;],
  priority_ids: [&quot;PITMC5Y&quot;,&quot;PEHBBT8&quot;,&quot;PB8QADI&quot;],
  priority_names: [&quot;P1&quot;,&quot;P2&quot;,&quot;P3&quot;]
)
```

