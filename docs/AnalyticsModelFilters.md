# PagerDutyOpenapiClient::AnalyticsModelFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at_start** | **String** | Accepts an ISO8601 DateTime string. Any incidents with a created_at less than this value will be omitted from the results. The maximum supported time range in conjunction with created_at_end is one year. | [optional] |
| **created_at_end** | **String** | Accepts an ISO8601 DateTime string. Any incidents with a created_at greater than or equal to this value will be omitted from the results. The maximum supported time range in conjunction with created_at_start is one year. | [optional] |
| **urgency** | **String** | Any incidents whose urgency does not match the provided string will be omitted from the results. | [optional] |
| **major** | **Boolean** | A boolean flag including whether results should contain *only* [major incidents](https://support.pagerduty.com/docs/operational-reviews#major-incidents), or exclude major incidents. If no value is provided all incidents will be included. | [optional] |
| **min_ackowledgements** | **Integer** | An integer that sets the requirement for the minimum number of acknowledgements to occur on an incident. For example, setting this to 1 will return only incidents that have at least 1 acknowledgement. If no value is provided, all incidents will be included. | [optional] |
| **min_timeout_escalations** | **Integer** | An integer that sets the requirement for the minimum number of timeout escalations to occur on an incident. For example, setting this to 1 will return only incidents that have at least 1 timeout escalation. If no value is provided, all incidents will be included. | [optional] |
| **min_manual_escalations** | **Integer** | An integer that sets the requirement for the minimum number of manual escalations to occur on an incident. For example, setting this to 1 will return only incidents that have at least 1 manual escalation. If no value is provided, all incidents will be included. | [optional] |
| **team_ids** | **Array&lt;String&gt;** | An array of team IDs. Only incidents related to these teams will be included in the results. If omitted, all teams the requestor has access to will be included in the results. | [optional] |
| **service_ids** | **Array&lt;String&gt;** | An array of service IDs. Only incidents related to these services will be included in the results. If omitted, all services the requestor has access to will be included in the results. | [optional] |
| **escalation_policy_ids** | **Array&lt;String&gt;** | An array of escalation policy IDs. Only incidents related to these escalation policies will be included in the results. If omitted, all escalation policies the requestor has access to will be included in the results. | [optional] |
| **priority_ids** | **Array&lt;String&gt;** | An array of priority IDs. Only incidents with these priorities will be included in the results. If omitted, all priorities will be included in the results. | [optional] |
| **priority_names** | **Array&lt;String&gt;** | An array of user-defined priority names. Only incidents with these priorities will be included in the results. If omitted, all priorities will be included in the results. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AnalyticsModelFilters.new(
  created_at_start: 2024-01-01T00:00:00+05:00,
  created_at_end: 2024-02-01T00:00:00Z,
  urgency: high,
  major: true,
  min_ackowledgements: 1,
  min_timeout_escalations: 1,
  min_manual_escalations: 1,
  team_ids: [&quot;P373JQQ&quot;,&quot;PAECHJV&quot;,&quot;P7SYGW6&quot;],
  service_ids: [&quot;PSEJLIN&quot;,&quot;PSLWBL8&quot;,&quot;PT4KHLX&quot;],
  escalation_policy_ids: [&quot;PDJXDF3&quot;,&quot;PG4EHNS&quot;],
  priority_ids: [&quot;PC8O0L3&quot;,&quot;PX01HJD&quot;,&quot;P5FK83M&quot;],
  priority_names: [&quot;P1&quot;,&quot;P2&quot;,&quot;P3&quot;]
)
```

