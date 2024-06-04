# OpenapiClient::ListServiceEventRules200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **offset** | **Integer** | Echoes offset pagination property. | [optional][readonly] |
| **limit** | **Integer** | Echoes limit pagination property. | [optional][readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **total** | **Integer** | The total number of records matching the given query. | [optional][readonly] |
| **migrated_at** | **Time** | The date/time the service&#39;s Event Rules were converted to a Service Orchestration. This property is only included if the &#x60;migrated_metadata&#x60; query parameter is provided. | [optional][readonly] |
| **migrated_by** | [**ListServiceEventRules200ResponseAllOfMigratedBy**](ListServiceEventRules200ResponseAllOfMigratedBy.md) |  | [optional] |
| **migrated_status** | **String** | The status indicating whether the service&#39;s Event Rules were successfully converted to a Service Orchestration. This property is only included if the &#x60;migrated_metadata&#x60; query parameter is provided. | [optional][readonly] |
| **migrated_to** | [**ListServiceEventRules200ResponseAllOfMigratedTo**](ListServiceEventRules200ResponseAllOfMigratedTo.md) |  | [optional] |
| **migrated_via** | **String** | Indicates whether the conversion was performed via the PagerDuty API or PagerDuty website. This property is only included if the &#x60;migrated_metadata&#x60; query parameter is provided. | [optional][readonly] |
| **rules** | [**Array&lt;ServiceEventRule&gt;**](ServiceEventRule.md) | The paginated list of Event Rules of the Service. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListServiceEventRules200Response.new(
  offset: null,
  limit: null,
  more: null,
  total: null,
  migrated_at: null,
  migrated_by: null,
  migrated_status: null,
  migrated_to: null,
  migrated_via: null,
  rules: null
)
```

