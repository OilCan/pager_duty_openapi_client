# PagerDutyOpenapiClient::ListStatusDashboards200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [readonly] |
| **next_cursor** | **String** | An opaque string than will deliver the next set of results when provided as the &#x60;cursor&#x60; parameter in a subsequent request.  A &#x60;null&#x60; value for this field indicates that there are no additional results.  | [readonly] |
| **status_dashboards** | [**Array&lt;StatusDashboard&gt;**](StatusDashboard.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::ListStatusDashboards200Response.new(
  limit: null,
  next_cursor: dXNlcjaVMzc5V0ZYTlo&#x3D;,
  status_dashboards: null
)
```

