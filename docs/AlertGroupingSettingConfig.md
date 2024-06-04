# OpenapiClient::AlertGroupingSettingConfig

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregate** | **String** | Whether Alerts should be grouped if &#x60;all&#x60; or &#x60;any&#x60; specified fields match. If &#x60;all&#x60; is selected, an exact match on every specified field name must occur for Alerts to be grouped. If &#x60;any&#x60; is selected, Alerts will be grouped when there is an exact match on at least one of the specified fields. | [optional] |
| **fields** | **Array&lt;String&gt;** | An array of strings which represent the fields with which to group against. Depending on the aggregate, Alerts will group if some or all the fields match. | [optional] |
| **time_window** | **Integer** | The maximum amount of time allowed between Alerts. Any Alerts arriving greater than &#x60;time_window&#x60; seconds apart will not be grouped together. This is a rolling time window up to 24 hours and is counted from the most recently grouped alert. The window is extended every time a new alert is added to the group, up to 24 hours (24 hours only applies to single-service settings). To use the \&quot;recommended_time_window,\&quot; set the value to 0, otherwise the value must be between 300 &lt;&#x3D; time_window &lt;&#x3D; 3600. | [optional] |
| **recommended_time_window** | **Integer** | In order to ensure your Service has the optimal grouping window, we use data science to calculate your Service&#x60;s average Alert inter-arrival time. We encourage customer&#x60;s to use this value, please set &#x60;time_window&#x60; to 0 to use the &#x60;recommended_time_window&#x60;. | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AlertGroupingSettingConfig.new(
  aggregate: null,
  fields: null,
  time_window: null,
  recommended_time_window: null
)
```

