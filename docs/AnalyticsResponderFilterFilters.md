# PagerDutyOpenapiClient::AnalyticsResponderFilterFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date_range_start** | **String** | Accepts an ISO8601 DateTime string. Any incidents with a created_at less than this value will be omitted from the results. The maximum supported time range in conjunction with date_range_end is one year. | [optional] |
| **date_range_end** | **String** | Accepts an ISO8601 DateTime string. Any incidents with a created_at greater than or equal to this value will be omitted from the results. The maximum supported time range in conjunction with date_range_start is one year. | [optional] |
| **urgency** | **String** | Any incidents whose urgency does not match the provided string will be omitted from the results. | [optional] |
| **team_ids** | **Array&lt;String&gt;** | An array of team IDs. Only incidents related to these teams will be included in the results. If omitted, all teams the requestor has access to will be included in the results. | [optional] |
| **responder_ids** | **Array&lt;String&gt;** | An array of responder IDs. Only incidents related to these responders will be included in the results. If omitted, all responders the requestor has access to will be included in the results. | [optional] |
| **priority_ids** | **Array&lt;String&gt;** | An array of priority IDs. Only incidents with these priorities will be included in the results. If omitted, all priorities will be included in the results. | [optional] |
| **priority_names** | **Array&lt;String&gt;** | An array of user-defined priority names. Only incidents with these priorities will be included in the results. If omitted, all priorities will be included in the results. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AnalyticsResponderFilterFilters.new(
  date_range_start: 2023-10-01T00:00:00+05:00,
  date_range_end: 2023-10-01T00:00:00Z,
  urgency: high,
  team_ids: [&quot;P373JQQ&quot;,&quot;PAECHJV&quot;,&quot;P7SYGW6&quot;],
  responder_ids: [&quot;PDJXDF3&quot;,&quot;PG4EHNS&quot;],
  priority_ids: [&quot;PC8O0L3&quot;,&quot;PX01HJD&quot;,&quot;P5FK83M&quot;],
  priority_names: [&quot;P1&quot;,&quot;P2&quot;,&quot;P3&quot;]
)
```

