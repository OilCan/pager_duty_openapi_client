# OpenapiClient::ListIncidentWorkflowActions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [readonly] |
| **next_cursor** | **String** | An opaque string than will deliver the next set of results when provided as the &#x60;cursor&#x60; parameter in a subsequent request.  A &#x60;null&#x60; value for this field indicates that there are no additional results.  | [readonly] |
| **more** | **Boolean** | Indicates if there are additional records to return | [optional][readonly] |
| **actions** | [**Array&lt;IncidentWorkflowAction&gt;**](IncidentWorkflowAction.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListIncidentWorkflowActions200Response.new(
  limit: null,
  next_cursor: dXNlcjaVMzc5V0ZYTlo&#x3D;,
  more: null,
  actions: null
)
```

