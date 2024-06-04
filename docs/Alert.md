# OpenapiClient::Alert

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | The date/time the alert was first triggered. | [optional][readonly] |
| **type** | **String** | The type of object being created. | [default to &#39;alert&#39;] |
| **status** | **String** | The current status of the alert. | [optional] |
| **alert_key** | **String** | The alert&#39;s de-duplication key. | [optional][readonly] |
| **service** | [**ServiceReference**](ServiceReference.md) |  | [optional] |
| **first_trigger_log_entry** | [**LogEntryReference**](LogEntryReference.md) |  | [optional] |
| **incident** | [**IncidentReference**](IncidentReference.md) |  | [optional] |
| **suppressed** | **Boolean** | Whether or not an alert is suppressed. Suppressed alerts are not created with a parent incident. | [optional][readonly][default to false] |
| **severity** | **String** | The magnitude of the problem as reported by the monitoring tool. | [optional][readonly] |
| **integration** | [**IntegrationReference**](IntegrationReference.md) |  | [optional] |
| **body** | [**Body**](Body.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Alert.new(
  created_at: null,
  type: null,
  status: null,
  alert_key: null,
  service: null,
  first_trigger_log_entry: null,
  incident: null,
  suppressed: null,
  severity: null,
  integration: null,
  body: null
)
```

