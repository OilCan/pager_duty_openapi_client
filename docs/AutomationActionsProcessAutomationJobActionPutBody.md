# PagerDutyOpenapiClient::AutomationActionsProcessAutomationJobActionPutBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **action_classification** | [**AutomationActionsActionClassificationEnum**](AutomationActionsActionClassificationEnum.md) |  | [optional] |
| **action_type** | [**Schema**](Schema.md) |  | [optional] |
| **runner** | **String** |  | [optional] |
| **action_data_reference** | [**AutomationActionsProcessAutomationJobActionDataReference**](AutomationActionsProcessAutomationJobActionDataReference.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AutomationActionsProcessAutomationJobActionPutBody.new(
  name: Restart apache,
  description: Restarts apache on the us-west-2-shopping-cart host,
  action_classification: null,
  action_type: null,
  runner: null,
  action_data_reference: null
)
```

