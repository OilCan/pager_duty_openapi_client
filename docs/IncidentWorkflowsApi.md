# OpenapiClient::IncidentWorkflowsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**associate_service_to_incident_workflow_trigger**](IncidentWorkflowsApi.md#associate_service_to_incident_workflow_trigger) | **POST** /incident_workflows/triggers/{id}/services | Associate a Trigger and Service |
| [**create_incident_workflow_instance**](IncidentWorkflowsApi.md#create_incident_workflow_instance) | **POST** /incident_workflows/{id}/instances | Start an Incident Workflow Instance |
| [**create_incident_workflow_trigger**](IncidentWorkflowsApi.md#create_incident_workflow_trigger) | **POST** /incident_workflows/triggers | Create a Trigger |
| [**delete_incident_workflow**](IncidentWorkflowsApi.md#delete_incident_workflow) | **DELETE** /incident_workflows/{id} | Delete an Incident Workflow |
| [**delete_incident_workflow_trigger**](IncidentWorkflowsApi.md#delete_incident_workflow_trigger) | **DELETE** /incident_workflows/triggers/{id} | Delete a Trigger |
| [**delete_service_from_incident_workflow_trigger**](IncidentWorkflowsApi.md#delete_service_from_incident_workflow_trigger) | **DELETE** /incident_workflows/triggers/{trigger_id}/services/{service_id} | Dissociate a Trigger and Service |
| [**get_incident_workflow**](IncidentWorkflowsApi.md#get_incident_workflow) | **GET** /incident_workflows/{id} | Get an Incident Workflow |
| [**get_incident_workflow_action**](IncidentWorkflowsApi.md#get_incident_workflow_action) | **GET** /incident_workflows/actions/{id} | Get an Action |
| [**get_incident_workflow_trigger**](IncidentWorkflowsApi.md#get_incident_workflow_trigger) | **GET** /incident_workflows/triggers/{id} | Get a Trigger |
| [**list_incident_workflow_actions**](IncidentWorkflowsApi.md#list_incident_workflow_actions) | **GET** /incident_workflows/actions | List Actions |
| [**list_incident_workflow_triggers**](IncidentWorkflowsApi.md#list_incident_workflow_triggers) | **GET** /incident_workflows/triggers | List Triggers |
| [**list_incident_workflows**](IncidentWorkflowsApi.md#list_incident_workflows) | **GET** /incident_workflows | List Incident Workflows |
| [**post_incident_workflow**](IncidentWorkflowsApi.md#post_incident_workflow) | **POST** /incident_workflows | Create an Incident Workflow |
| [**put_incident_workflow**](IncidentWorkflowsApi.md#put_incident_workflow) | **PUT** /incident_workflows/{id} | Update an Incident Workflow |
| [**update_incident_workflow_trigger**](IncidentWorkflowsApi.md#update_incident_workflow_trigger) | **PUT** /incident_workflows/triggers/{id} | Update a Trigger |


## associate_service_to_incident_workflow_trigger

> <CreateIncidentWorkflowTriggerRequest> associate_service_to_incident_workflow_trigger(accept, content_type, id, opts)

Associate a Trigger and Service

Associate a Service with an existing Incident Workflow Trigger  Scoped OAuth requires: `incident_workflows.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  associate_service_to_incident_workflow_trigger_request: OpenapiClient::AssociateServiceToIncidentWorkflowTriggerRequest.new({service: OpenapiClient::AssociateServiceToIncidentWorkflowTriggerRequestService.new}) # AssociateServiceToIncidentWorkflowTriggerRequest | 
}

begin
  # Associate a Trigger and Service
  result = api_instance.associate_service_to_incident_workflow_trigger(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->associate_service_to_incident_workflow_trigger: #{e}"
end
```

#### Using the associate_service_to_incident_workflow_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncidentWorkflowTriggerRequest>, Integer, Hash)> associate_service_to_incident_workflow_trigger_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Associate a Trigger and Service
  data, status_code, headers = api_instance.associate_service_to_incident_workflow_trigger_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncidentWorkflowTriggerRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->associate_service_to_incident_workflow_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **associate_service_to_incident_workflow_trigger_request** | [**AssociateServiceToIncidentWorkflowTriggerRequest**](AssociateServiceToIncidentWorkflowTriggerRequest.md) |  | [optional] |

### Return type

[**CreateIncidentWorkflowTriggerRequest**](CreateIncidentWorkflowTriggerRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_incident_workflow_instance

> <CreateIncidentWorkflowInstance201Response> create_incident_workflow_instance(accept, content_type, id, opts)

Start an Incident Workflow Instance

Start an Instance of an Incident Workflow. Sometimes referred to as \"triggering a workflow on an incident.\"  An Incident Workflow is a sequence of configurable Steps and associated Triggers that can execute automated Actions for a given Incident.  Scoped OAuth requires: `incident_workflows:instances.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_incident_workflow_instance_request: OpenapiClient::CreateIncidentWorkflowInstanceRequest.new({incident_workflow_instance: OpenapiClient::CreateIncidentWorkflowInstanceRequestIncidentWorkflowInstance.new}) # CreateIncidentWorkflowInstanceRequest | 
}

begin
  # Start an Incident Workflow Instance
  result = api_instance.create_incident_workflow_instance(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->create_incident_workflow_instance: #{e}"
end
```

#### Using the create_incident_workflow_instance_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncidentWorkflowInstance201Response>, Integer, Hash)> create_incident_workflow_instance_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Start an Incident Workflow Instance
  data, status_code, headers = api_instance.create_incident_workflow_instance_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncidentWorkflowInstance201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->create_incident_workflow_instance_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_incident_workflow_instance_request** | [**CreateIncidentWorkflowInstanceRequest**](CreateIncidentWorkflowInstanceRequest.md) |  | [optional] |

### Return type

[**CreateIncidentWorkflowInstance201Response**](CreateIncidentWorkflowInstance201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_incident_workflow_trigger

> <CreateIncidentWorkflowTriggerRequest> create_incident_workflow_trigger(accept, content_type, opts)

Create a Trigger

Create new Incident Workflow Trigger  Scoped OAuth requires: `incident_workflows.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_incident_workflow_trigger_request: OpenapiClient::CreateIncidentWorkflowTriggerRequest.new({trigger: OpenapiClient::IncidentWorkflowTrigger.new}) # CreateIncidentWorkflowTriggerRequest | 
}

begin
  # Create a Trigger
  result = api_instance.create_incident_workflow_trigger(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->create_incident_workflow_trigger: #{e}"
end
```

#### Using the create_incident_workflow_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncidentWorkflowTriggerRequest>, Integer, Hash)> create_incident_workflow_trigger_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create a Trigger
  data, status_code, headers = api_instance.create_incident_workflow_trigger_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncidentWorkflowTriggerRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->create_incident_workflow_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_incident_workflow_trigger_request** | [**CreateIncidentWorkflowTriggerRequest**](CreateIncidentWorkflowTriggerRequest.md) |  | [optional] |

### Return type

[**CreateIncidentWorkflowTriggerRequest**](CreateIncidentWorkflowTriggerRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_incident_workflow

> delete_incident_workflow(accept, content_type, id)

Delete an Incident Workflow

Delete an existing Incident Workflow  An Incident Workflow is a sequence of configurable Steps and associated Triggers that can execute automated Actions for a given Incident.  Scoped OAuth requires: `incident_workflows.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete an Incident Workflow
  api_instance.delete_incident_workflow(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->delete_incident_workflow: #{e}"
end
```

#### Using the delete_incident_workflow_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_incident_workflow_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete an Incident Workflow
  data, status_code, headers = api_instance.delete_incident_workflow_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->delete_incident_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_incident_workflow_trigger

> delete_incident_workflow_trigger(accept, content_type, id)

Delete a Trigger

Delete an existing Incident Workflow Trigger  Scoped OAuth requires: `incident_workflows.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a Trigger
  api_instance.delete_incident_workflow_trigger(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->delete_incident_workflow_trigger: #{e}"
end
```

#### Using the delete_incident_workflow_trigger_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_incident_workflow_trigger_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete a Trigger
  data, status_code, headers = api_instance.delete_incident_workflow_trigger_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->delete_incident_workflow_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_service_from_incident_workflow_trigger

> <CreateIncidentWorkflowTriggerRequest> delete_service_from_incident_workflow_trigger(accept, content_type, trigger_id, service_id)

Dissociate a Trigger and Service

Remove a an existing Service from an Incident Workflow Trigger  Scoped OAuth requires: `incident_workflows.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
trigger_id = 'trigger_id_example' # String | Identifier for the Trigger
service_id = 'service_id_example' # String | Identifier for the Service

begin
  # Dissociate a Trigger and Service
  result = api_instance.delete_service_from_incident_workflow_trigger(accept, content_type, trigger_id, service_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->delete_service_from_incident_workflow_trigger: #{e}"
end
```

#### Using the delete_service_from_incident_workflow_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncidentWorkflowTriggerRequest>, Integer, Hash)> delete_service_from_incident_workflow_trigger_with_http_info(accept, content_type, trigger_id, service_id)

```ruby
begin
  # Dissociate a Trigger and Service
  data, status_code, headers = api_instance.delete_service_from_incident_workflow_trigger_with_http_info(accept, content_type, trigger_id, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncidentWorkflowTriggerRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->delete_service_from_incident_workflow_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **trigger_id** | **String** | Identifier for the Trigger |  |
| **service_id** | **String** | Identifier for the Service |  |

### Return type

[**CreateIncidentWorkflowTriggerRequest**](CreateIncidentWorkflowTriggerRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_workflow

> <PostIncidentWorkflowRequest> get_incident_workflow(accept, content_type, id)

Get an Incident Workflow

Get an existing Incident Workflow An Incident Workflow is a sequence of configurable Steps and associated Triggers that can execute automated Actions for a given Incident.  Scoped OAuth requires: `incident_workflows.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get an Incident Workflow
  result = api_instance.get_incident_workflow(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->get_incident_workflow: #{e}"
end
```

#### Using the get_incident_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostIncidentWorkflowRequest>, Integer, Hash)> get_incident_workflow_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an Incident Workflow
  data, status_code, headers = api_instance.get_incident_workflow_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostIncidentWorkflowRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->get_incident_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**PostIncidentWorkflowRequest**](PostIncidentWorkflowRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_workflow_action

> <GetIncidentWorkflowAction200Response> get_incident_workflow_action(accept, content_type, id)

Get an Action

Get an Incident Workflow Action  Scoped OAuth requires: `incident_workflows.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get an Action
  result = api_instance.get_incident_workflow_action(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->get_incident_workflow_action: #{e}"
end
```

#### Using the get_incident_workflow_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIncidentWorkflowAction200Response>, Integer, Hash)> get_incident_workflow_action_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an Action
  data, status_code, headers = api_instance.get_incident_workflow_action_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIncidentWorkflowAction200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->get_incident_workflow_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetIncidentWorkflowAction200Response**](GetIncidentWorkflowAction200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_incident_workflow_trigger

> <GetIncidentWorkflowTrigger200Response> get_incident_workflow_trigger(accept, content_type, id)

Get a Trigger

Retrieve an existing Incident Workflows Trigger  Scoped OAuth requires: `incident_workflows.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get a Trigger
  result = api_instance.get_incident_workflow_trigger(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->get_incident_workflow_trigger: #{e}"
end
```

#### Using the get_incident_workflow_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetIncidentWorkflowTrigger200Response>, Integer, Hash)> get_incident_workflow_trigger_with_http_info(accept, content_type, id)

```ruby
begin
  # Get a Trigger
  data, status_code, headers = api_instance.get_incident_workflow_trigger_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetIncidentWorkflowTrigger200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->get_incident_workflow_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetIncidentWorkflowTrigger200Response**](GetIncidentWorkflowTrigger200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_workflow_actions

> <ListIncidentWorkflowActions200Response> list_incident_workflow_actions(accept, content_type, opts)

List Actions

List Incident Workflow Actions  Scoped OAuth requires: `incident_workflows.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The minimum of the `limit` parameter used in the request or the maximum request size of the API.
  cursor: 'cursor_example', # String | Optional parameter used to request the \"next\" set of results from an API.  The value provided here is most commonly obtained from the `next_cursor` field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  keyword: 'slack' # String | If provided, only show actions tagged with the specified keyword
}

begin
  # List Actions
  result = api_instance.list_incident_workflow_actions(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->list_incident_workflow_actions: #{e}"
end
```

#### Using the list_incident_workflow_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentWorkflowActions200Response>, Integer, Hash)> list_incident_workflow_actions_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Actions
  data, status_code, headers = api_instance.list_incident_workflow_actions_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentWorkflowActions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->list_incident_workflow_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [optional] |
| **cursor** | **String** | Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set.  | [optional] |
| **keyword** | **String** | If provided, only show actions tagged with the specified keyword | [optional] |

### Return type

[**ListIncidentWorkflowActions200Response**](ListIncidentWorkflowActions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_workflow_triggers

> <ListIncidentWorkflowTriggers200Response> list_incident_workflow_triggers(accept, content_type, opts)

List Triggers

List existing Incident Workflow Triggers  Scoped OAuth requires: `incident_workflows.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  workflow_id: 'P4RG7YW', # String | If provided, only show triggers configured to start the given workflow. Useful for listing all services associated with the given workflow
  incident_id: 'Q2LAR4ADCXC8IB', # String | If provided, only show triggers configured on the service of the given incident. Useful for finding manual triggers that are configured on the service for a specific incident. Cannot be specified if `service_id` is provided.
  service_id: 'P4RG7YW', # String | If provided, only show triggers configured for incidents in the given service. Useful for listing all workflows associated with the given service. Cannot be specified if `incident_id` is provided.
  trigger_type: 'manual', # String | If provided, only show triggers of the given type. For example “manual” to search for manual triggers
  workflow_name_contains: 'High Priority', # String | If provided, only show triggers configured to start workflows whose name contain the provided value.
  sort_by: 'workflow_id', # String | If provided, returns triggers sorted by the specified property.
  limit: 56, # Integer | The minimum of the `limit` parameter used in the request or the maximum request size of the API.
  cursor: 'cursor_example' # String | Optional parameter used to request the \"next\" set of results from an API.  The value provided here is most commonly obtained from the `next_cursor` field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
}

begin
  # List Triggers
  result = api_instance.list_incident_workflow_triggers(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->list_incident_workflow_triggers: #{e}"
end
```

#### Using the list_incident_workflow_triggers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentWorkflowTriggers200Response>, Integer, Hash)> list_incident_workflow_triggers_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Triggers
  data, status_code, headers = api_instance.list_incident_workflow_triggers_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentWorkflowTriggers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->list_incident_workflow_triggers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **workflow_id** | **String** | If provided, only show triggers configured to start the given workflow. Useful for listing all services associated with the given workflow | [optional] |
| **incident_id** | **String** | If provided, only show triggers configured on the service of the given incident. Useful for finding manual triggers that are configured on the service for a specific incident. Cannot be specified if &#x60;service_id&#x60; is provided. | [optional] |
| **service_id** | **String** | If provided, only show triggers configured for incidents in the given service. Useful for listing all workflows associated with the given service. Cannot be specified if &#x60;incident_id&#x60; is provided. | [optional] |
| **trigger_type** | **String** | If provided, only show triggers of the given type. For example “manual” to search for manual triggers | [optional] |
| **workflow_name_contains** | **String** | If provided, only show triggers configured to start workflows whose name contain the provided value. | [optional] |
| **sort_by** | **String** | If provided, returns triggers sorted by the specified property. | [optional] |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [optional] |
| **cursor** | **String** | Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set.  | [optional] |

### Return type

[**ListIncidentWorkflowTriggers200Response**](ListIncidentWorkflowTriggers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incident_workflows

> <ListIncidentWorkflows200Response> list_incident_workflows(accept, content_type, opts)

List Incident Workflows

List existing Incident Workflows.  This is the best method to use to list all Incident Workflows in your account. If your use case requires listing Incident Workflows associated with a particular Service, you can use the \"List Triggers\" method to find Incident Workflows configured to start for Incidents in a given Service.  An Incident Workflow is a sequence of configurable Steps and associated Triggers that can execute automated Actions for a given Incident.  Scoped OAuth requires: `incident_workflows.read` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  query: 'query_example', # String | Filters the result, showing only the records whose name matches the query.
  include: 'steps' # String | Array of additional details to include.
}

begin
  # List Incident Workflows
  result = api_instance.list_incident_workflows(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->list_incident_workflows: #{e}"
end
```

#### Using the list_incident_workflows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListIncidentWorkflows200Response>, Integer, Hash)> list_incident_workflows_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Incident Workflows
  data, status_code, headers = api_instance.list_incident_workflows_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListIncidentWorkflows200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->list_incident_workflows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **query** | **String** | Filters the result, showing only the records whose name matches the query. | [optional] |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**ListIncidentWorkflows200Response**](ListIncidentWorkflows200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_incident_workflow

> <PostIncidentWorkflowRequest> post_incident_workflow(accept, content_type, opts)

Create an Incident Workflow

Create a new Incident Workflow  An Incident Workflow is a sequence of configurable Steps and associated Triggers that can execute automated Actions for a given Incident.  Scoped OAuth requires: `incident_workflows.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  post_incident_workflow_request: OpenapiClient::PostIncidentWorkflowRequest.new({incident_workflow: OpenapiClient::IncidentWorkflow.new}) # PostIncidentWorkflowRequest | 
}

begin
  # Create an Incident Workflow
  result = api_instance.post_incident_workflow(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->post_incident_workflow: #{e}"
end
```

#### Using the post_incident_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostIncidentWorkflowRequest>, Integer, Hash)> post_incident_workflow_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create an Incident Workflow
  data, status_code, headers = api_instance.post_incident_workflow_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostIncidentWorkflowRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->post_incident_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **post_incident_workflow_request** | [**PostIncidentWorkflowRequest**](PostIncidentWorkflowRequest.md) |  | [optional] |

### Return type

[**PostIncidentWorkflowRequest**](PostIncidentWorkflowRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_incident_workflow

> <PostIncidentWorkflowRequest> put_incident_workflow(accept, content_type, id, opts)

Update an Incident Workflow

Update an Incident Workflow  An Incident Workflow is a sequence of configurable Steps and associated Triggers that can execute automated Actions for a given Incident.  Scoped OAuth requires: `incident_workflows.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  post_incident_workflow_request: OpenapiClient::PostIncidentWorkflowRequest.new({incident_workflow: OpenapiClient::IncidentWorkflow.new}) # PostIncidentWorkflowRequest | 
}

begin
  # Update an Incident Workflow
  result = api_instance.put_incident_workflow(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->put_incident_workflow: #{e}"
end
```

#### Using the put_incident_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostIncidentWorkflowRequest>, Integer, Hash)> put_incident_workflow_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update an Incident Workflow
  data, status_code, headers = api_instance.put_incident_workflow_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostIncidentWorkflowRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->put_incident_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **post_incident_workflow_request** | [**PostIncidentWorkflowRequest**](PostIncidentWorkflowRequest.md) |  | [optional] |

### Return type

[**PostIncidentWorkflowRequest**](PostIncidentWorkflowRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_incident_workflow_trigger

> <CreateIncidentWorkflowTriggerRequest> update_incident_workflow_trigger(accept, content_type, id, opts)

Update a Trigger

Update an existing Incident Workflow Trigger  Scoped OAuth requires: `incident_workflows.write` 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'
end

api_instance = OpenapiClient::IncidentWorkflowsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_incident_workflow_trigger_request: OpenapiClient::CreateIncidentWorkflowTriggerRequest.new({trigger: OpenapiClient::IncidentWorkflowTrigger.new}) # CreateIncidentWorkflowTriggerRequest | 
}

begin
  # Update a Trigger
  result = api_instance.update_incident_workflow_trigger(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->update_incident_workflow_trigger: #{e}"
end
```

#### Using the update_incident_workflow_trigger_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateIncidentWorkflowTriggerRequest>, Integer, Hash)> update_incident_workflow_trigger_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a Trigger
  data, status_code, headers = api_instance.update_incident_workflow_trigger_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateIncidentWorkflowTriggerRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling IncidentWorkflowsApi->update_incident_workflow_trigger_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_incident_workflow_trigger_request** | [**CreateIncidentWorkflowTriggerRequest**](CreateIncidentWorkflowTriggerRequest.md) |  | [optional] |

### Return type

[**CreateIncidentWorkflowTriggerRequest**](CreateIncidentWorkflowTriggerRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

