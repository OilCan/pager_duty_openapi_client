# OpenapiClient::ServiceOrchestrationAllOfOrchestrationPath

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **migrated_at** | **Time** | The date/time the service&#39;s Event Rules were converted to this Service Orchestration. This property is only included if the &#x60;migrated_metadata&#x60; query parameter is provided. | [optional][readonly] |
| **migrated_by** | [**ServiceOrchestrationAllOfOrchestrationPathAllOfMigratedBy**](ServiceOrchestrationAllOfOrchestrationPathAllOfMigratedBy.md) |  | [optional] |
| **migrated_from** | [**ServiceOrchestrationAllOfOrchestrationPathAllOfMigratedFrom**](ServiceOrchestrationAllOfOrchestrationPathAllOfMigratedFrom.md) |  | [optional] |
| **migrated_status** | **String** | The status indicating whether the service&#39;s Event Rules were successfully converted to this Service Orchestration. This property is only included if the &#x60;migrated_metadata&#x60; query parameter is provided. | [optional][readonly] |
| **migrated_via** | **String** | Indicates whether the conversion was performed via the PagerDuty API or PagerDuty website. This property is only included if the &#x60;migrated_metadata&#x60; query parameter is provided. | [optional][readonly] |
| **type** | **Object** | Indicates that these are sets of rules belonging to a service. | [optional] |
| **parent** | [**ServiceOrchestrationAllOfOrchestrationPathAllOfParent**](ServiceOrchestrationAllOfOrchestrationPathAllOfParent.md) |  | [optional] |
| **sets** | [**Array&lt;ServiceOrchestrationAllOfOrchestrationPathAllOfSetsInner&gt;**](ServiceOrchestrationAllOfOrchestrationPathAllOfSetsInner.md) | A Service Orchestration must contain at least a \&quot;start\&quot; set, but can contain any number of additional sets that are routed to by other rules to form a directional graph. | [optional] |
| **catch_all** | [**ServiceOrchestrationAllOfOrchestrationPathAllOfCatchAll**](ServiceOrchestrationAllOfOrchestrationPathAllOfCatchAll.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceOrchestrationAllOfOrchestrationPath.new(
  migrated_at: null,
  migrated_by: null,
  migrated_from: null,
  migrated_status: null,
  migrated_via: null,
  type: null,
  parent: null,
  sets: null,
  catch_all: null
)
```

