# PagerDutyOpenapiClient::AutomationActionsAbstractActionPutBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **action_classification** | [**AutomationActionsActionClassificationEnum**](AutomationActionsActionClassificationEnum.md) |  | [optional] |
| **action_type** | [**Schema**](Schema.md) |  | [optional] |
| **runner** | **String** |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::AutomationActionsAbstractActionPutBody.new(
  name: Restart apache,
  description: Restarts apache on the us-west-2-shopping-cart host,
  action_classification: null,
  action_type: null,
  runner: null
)
```

