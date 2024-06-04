# OpenapiClient::AutomationActionsProcessAutomationJobActionPostBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  |  |
| **description** | **String** |  |  |
| **action_classification** | [**AutomationActionsActionClassificationEnum**](AutomationActionsActionClassificationEnum.md) |  | [optional] |
| **action_type** | [**Schema**](Schema.md) |  |  |
| **runner** | **String** |  | [optional] |
| **services** | [**Array&lt;ServiceReference&gt;**](ServiceReference.md) |  | [optional] |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) |  | [optional] |
| **action_data_reference** | [**AutomationActionsProcessAutomationJobActionDataReference**](AutomationActionsProcessAutomationJobActionDataReference.md) |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AutomationActionsProcessAutomationJobActionPostBody.new(
  name: Restart apache,
  description: Restarts apache on the us-west-2-shopping-cart host,
  action_classification: null,
  action_type: null,
  runner: 1a6763bd-b1ad-458f-a347-6c8a9bea2d70,
  services: null,
  teams: null,
  action_data_reference: null
)
```

