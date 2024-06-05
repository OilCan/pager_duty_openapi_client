# PagerDutyOpenapiClient::Orchestration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the Orchestration. | [optional][readonly] |
| **_self** | **String** | The API show URL at which the object is accessible | [optional][readonly] |
| **name** | **String** | Name of the Orchestration. | [optional] |
| **description** | **String** | A description of this Orchestration&#39;s purpose. | [optional] |
| **team** | [**ListEventOrchestrations200ResponseAllOfOrchestrationsInnerTeam**](ListEventOrchestrations200ResponseAllOfOrchestrationsInnerTeam.md) |  | [optional] |
| **integrations** | [**Array&lt;OrchestrationIntegration&gt;**](OrchestrationIntegration.md) |  | [optional][readonly] |
| **routes** | **Integer** | Number of different Service Orchestration being routed to | [optional][readonly] |
| **created_at** | **Time** | The date the Orchestration was created at. | [optional][readonly] |
| **created_by** | [**ListEventOrchestrations200ResponseAllOfOrchestrationsInnerCreatedBy**](ListEventOrchestrations200ResponseAllOfOrchestrationsInnerCreatedBy.md) |  | [optional] |
| **updated_at** | **Time** | The date the Orchestration was last updated. | [optional][readonly] |
| **updated_by** | [**ListEventOrchestrations200ResponseAllOfOrchestrationsInnerUpdatedBy**](ListEventOrchestrations200ResponseAllOfOrchestrationsInnerUpdatedBy.md) |  | [optional] |
| **version** | **String** | Version of the Orchestration. | [optional][readonly] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::Orchestration.new(
  id: null,
  _self: null,
  name: null,
  description: null,
  team: null,
  integrations: null,
  routes: null,
  created_at: null,
  created_by: null,
  updated_at: null,
  updated_by: null,
  version: null
)
```

