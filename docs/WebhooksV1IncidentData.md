# PagerDutyOpenapiClient::WebhooksV1IncidentData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional][readonly] |
| **incident_number** | **Integer** | The number of the incident. This is unique across the account. | [optional][readonly] |
| **created_on** | **Time** | The date/time the incident was first triggered. | [optional][readonly] |
| **status** | **String** | The current status of the incident. | [optional][readonly] |
| **html_url** | **String** |  | [optional][readonly] |
| **incident_key** | **String** | The incident&#39;s de-duplication key. | [optional][readonly] |
| **service** | [**WebhooksV1Service**](WebhooksV1Service.md) |  | [optional] |
| **assigned_to_user** | [**WebhooksV1AssignedToUser**](WebhooksV1AssignedToUser.md) |  | [optional] |
| **assigned_to** | [**Array&lt;WebhooksV1AssignedTo&gt;**](WebhooksV1AssignedTo.md) |  | [optional][readonly] |
| **trigger_summary_data** | [**WebhooksV1IncidentDataTriggerSummaryData**](WebhooksV1IncidentDataTriggerSummaryData.md) |  | [optional] |
| **trigger_details_html_url** | **String** |  | [optional][readonly] |
| **last_status_change_on** | **Time** | The time at which the status of the incident last changed. | [optional][readonly] |
| **last_status_change_by** | [**WebhooksV1AssignedToUser**](WebhooksV1AssignedToUser.md) |  | [optional] |
| **number_of_escalations** | **Integer** | Number of times the incident has been escalated. | [optional][readonly] |
| **urgency** | **String** |  | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::WebhooksV1IncidentData.new(
  id: null,
  incident_number: null,
  created_on: null,
  status: null,
  html_url: null,
  incident_key: null,
  service: null,
  assigned_to_user: null,
  assigned_to: null,
  trigger_summary_data: null,
  trigger_details_html_url: null,
  last_status_change_on: null,
  last_status_change_by: null,
  number_of_escalations: null,
  urgency: null
)
```

