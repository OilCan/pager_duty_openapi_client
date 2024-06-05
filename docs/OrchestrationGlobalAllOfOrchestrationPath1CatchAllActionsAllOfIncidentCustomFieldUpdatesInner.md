# PagerDutyOpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfIncidentCustomFieldUpdatesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the custom field resource. You can find the list of IDs by calling the List Custom Fields endpoint. | [optional] |
| **value** | **String** | A value that will be used to populate the specified Incident Custom Field. AIOps users can additionally use the {{event}} variable to include elements of the event payload in the custom field value. | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1CatchAllActionsAllOfIncidentCustomFieldUpdatesInner.new(
  id: PEXCK89,
  value: High CPU on server
)
```

