# OpenapiClient::AutomationActionsProcessAutomationJobActionDataReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **process_automation_job_id** | **String** |  |  |
| **process_automation_job_arguments** | **String** | Arguments to pass to the Process Automation job. The maxLength value is specified in bytes. | [optional] |
| **process_automation_node_filter** | **String** | Node filter for the Process Automation job. The maxLength value is specified in bytes. Filter syntax: https://docs.rundeck.com/docs/manual/11-node-filters.html#node-filter-syntax | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AutomationActionsProcessAutomationJobActionDataReference.new(
  process_automation_job_id: 79c199bba1aff6e519f198457f5ec0fc,
  process_automation_job_arguments: -env production,
  process_automation_node_filter: mynode1 !nodename: mynode2
)
```

