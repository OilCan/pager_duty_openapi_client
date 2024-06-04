# OpenapiClient::AutomationActionsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_automation_action**](AutomationActionsApi.md#create_automation_action) | **POST** /automation_actions/actions | Create an Automation Action |
| [**create_automation_action_invocation**](AutomationActionsApi.md#create_automation_action_invocation) | **POST** /automation_actions/actions/{id}/invocations | Create an Invocation |
| [**create_automation_action_service_assocation**](AutomationActionsApi.md#create_automation_action_service_assocation) | **POST** /automation_actions/actions/{id}/services | Associate an Automation Action with a service |
| [**create_automation_action_team_association**](AutomationActionsApi.md#create_automation_action_team_association) | **POST** /automation_actions/actions/{id}/teams | Associate an Automation Action with a team |
| [**create_automation_actions_runner**](AutomationActionsApi.md#create_automation_actions_runner) | **POST** /automation_actions/runners | Create an Automation Action runner. |
| [**create_automation_actions_runner_team_association**](AutomationActionsApi.md#create_automation_actions_runner_team_association) | **POST** /automation_actions/runners/{id}/teams | Associate a runner with a team |
| [**delete_automation_action**](AutomationActionsApi.md#delete_automation_action) | **DELETE** /automation_actions/actions/{id} | Delete an Automation Action |
| [**delete_automation_action_service_association**](AutomationActionsApi.md#delete_automation_action_service_association) | **DELETE** /automation_actions/actions/{id}/services/{service_id} | Disassociate an Automation Action from a service |
| [**delete_automation_action_team_association**](AutomationActionsApi.md#delete_automation_action_team_association) | **DELETE** /automation_actions/actions/{id}/teams/{team_id} | Disassociate an Automation Action from a team |
| [**delete_automation_actions_runner**](AutomationActionsApi.md#delete_automation_actions_runner) | **DELETE** /automation_actions/runners/{id} | Delete an Automation Action runner |
| [**delete_automation_actions_runner_team_association**](AutomationActionsApi.md#delete_automation_actions_runner_team_association) | **DELETE** /automation_actions/runners/{id}/teams/{team_id} | Disassociate a runner from a team |
| [**get_all_automation_actions**](AutomationActionsApi.md#get_all_automation_actions) | **GET** /automation_actions/actions | List Automation Actions |
| [**get_automation_action**](AutomationActionsApi.md#get_automation_action) | **GET** /automation_actions/actions/{id} | Get an Automation Action |
| [**get_automation_actions_action_service_association**](AutomationActionsApi.md#get_automation_actions_action_service_association) | **GET** /automation_actions/actions/{id}/services/{service_id} | Get the details of an Automation Action / service relation |
| [**get_automation_actions_action_service_associations**](AutomationActionsApi.md#get_automation_actions_action_service_associations) | **GET** /automation_actions/actions/{id}/services | Get all service references associated with an Automation Action |
| [**get_automation_actions_action_team_association**](AutomationActionsApi.md#get_automation_actions_action_team_association) | **GET** /automation_actions/actions/{id}/teams/{team_id} | Get the details of an Automation Action / team relation |
| [**get_automation_actions_action_team_associations**](AutomationActionsApi.md#get_automation_actions_action_team_associations) | **GET** /automation_actions/actions/{id}/teams | Get all team references associated with an Automation Action |
| [**get_automation_actions_invocation**](AutomationActionsApi.md#get_automation_actions_invocation) | **GET** /automation_actions/invocations/{id} | Get an Invocation |
| [**get_automation_actions_runner**](AutomationActionsApi.md#get_automation_actions_runner) | **GET** /automation_actions/runners/{id} | Get an Automation Action runner |
| [**get_automation_actions_runner_team_association**](AutomationActionsApi.md#get_automation_actions_runner_team_association) | **GET** /automation_actions/runners/{id}/teams/{team_id} | Get the details of a runner / team relation |
| [**get_automation_actions_runner_team_associations**](AutomationActionsApi.md#get_automation_actions_runner_team_associations) | **GET** /automation_actions/runners/{id}/teams | Get all team references associated with a runner |
| [**get_automation_actions_runners**](AutomationActionsApi.md#get_automation_actions_runners) | **GET** /automation_actions/runners | List Automation Action runners |
| [**list_automation_action_invocations**](AutomationActionsApi.md#list_automation_action_invocations) | **GET** /automation_actions/invocations | List Invocations |
| [**update_automation_action**](AutomationActionsApi.md#update_automation_action) | **PUT** /automation_actions/actions/{id} | Update an Automation Action |
| [**update_automation_actions_runner**](AutomationActionsApi.md#update_automation_actions_runner) | **PUT** /automation_actions/runners/{id} | Update an Automation Action runner |


## create_automation_action

> <CreateAutomationAction201Response> create_automation_action(accept, content_type, create_automation_action_request)

Create an Automation Action

Create a Script, Process Automation, or Runbook Automation action 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
create_automation_action_request = OpenapiClient::CreateAutomationActionRequest.new({action: OpenapiClient::AutomationActionsProcessAutomationJobActionPostBody.new({name: 'Restart apache', description: 'Restarts apache on the us-west-2-shopping-cart host', action_type: TODO, action_data_reference: OpenapiClient::AutomationActionsProcessAutomationJobActionDataReference.new({process_automation_job_id: '79c199bba1aff6e519f198457f5ec0fc'})})}) # CreateAutomationActionRequest | 

begin
  # Create an Automation Action
  result = api_instance.create_automation_action(accept, content_type, create_automation_action_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_action: #{e}"
end
```

#### Using the create_automation_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationAction201Response>, Integer, Hash)> create_automation_action_with_http_info(accept, content_type, create_automation_action_request)

```ruby
begin
  # Create an Automation Action
  data, status_code, headers = api_instance.create_automation_action_with_http_info(accept, content_type, create_automation_action_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationAction201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_automation_action_request** | [**CreateAutomationActionRequest**](CreateAutomationActionRequest.md) |  |  |

### Return type

[**CreateAutomationAction201Response**](CreateAutomationAction201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automation_action_invocation

> <CreateAutomationActionInvocation201Response> create_automation_action_invocation(accept, content_type, id, create_automation_action_invocation_request)

Create an Invocation

Invokes an Action 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
create_automation_action_invocation_request = OpenapiClient::CreateAutomationActionInvocationRequest.new({invocation: OpenapiClient::CreateAutomationActionInvocationRequestInvocation.new({metadata: OpenapiClient::CreateAutomationActionInvocationRequestInvocationMetadata.new({incident_id: 'incident_id_example'})})}) # CreateAutomationActionInvocationRequest | 

begin
  # Create an Invocation
  result = api_instance.create_automation_action_invocation(accept, content_type, id, create_automation_action_invocation_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_action_invocation: #{e}"
end
```

#### Using the create_automation_action_invocation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationActionInvocation201Response>, Integer, Hash)> create_automation_action_invocation_with_http_info(accept, content_type, id, create_automation_action_invocation_request)

```ruby
begin
  # Create an Invocation
  data, status_code, headers = api_instance.create_automation_action_invocation_with_http_info(accept, content_type, id, create_automation_action_invocation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationActionInvocation201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_action_invocation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_automation_action_invocation_request** | [**CreateAutomationActionInvocationRequest**](CreateAutomationActionInvocationRequest.md) |  |  |

### Return type

[**CreateAutomationActionInvocation201Response**](CreateAutomationActionInvocation201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automation_action_service_assocation

> <CreateAutomationActionServiceAssocationRequest> create_automation_action_service_assocation(accept, content_type, id, create_automation_action_service_assocation_request)

Associate an Automation Action with a service

Associate an Automation Action with a service 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
create_automation_action_service_assocation_request = OpenapiClient::CreateAutomationActionServiceAssocationRequest.new({service: OpenapiClient::ServiceReference.new({type: 'service_reference'})}) # CreateAutomationActionServiceAssocationRequest | 

begin
  # Associate an Automation Action with a service
  result = api_instance.create_automation_action_service_assocation(accept, content_type, id, create_automation_action_service_assocation_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_action_service_assocation: #{e}"
end
```

#### Using the create_automation_action_service_assocation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationActionServiceAssocationRequest>, Integer, Hash)> create_automation_action_service_assocation_with_http_info(accept, content_type, id, create_automation_action_service_assocation_request)

```ruby
begin
  # Associate an Automation Action with a service
  data, status_code, headers = api_instance.create_automation_action_service_assocation_with_http_info(accept, content_type, id, create_automation_action_service_assocation_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationActionServiceAssocationRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_action_service_assocation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_automation_action_service_assocation_request** | [**CreateAutomationActionServiceAssocationRequest**](CreateAutomationActionServiceAssocationRequest.md) |  |  |

### Return type

[**CreateAutomationActionServiceAssocationRequest**](CreateAutomationActionServiceAssocationRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automation_action_team_association

> <CreateAutomationActionTeamAssociationRequest> create_automation_action_team_association(accept, content_type, id, create_automation_action_team_association_request)

Associate an Automation Action with a team

Associate an Automation Action with a team 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
create_automation_action_team_association_request = OpenapiClient::CreateAutomationActionTeamAssociationRequest.new({team: OpenapiClient::TeamReference.new({type: 'team_reference'})}) # CreateAutomationActionTeamAssociationRequest | 

begin
  # Associate an Automation Action with a team
  result = api_instance.create_automation_action_team_association(accept, content_type, id, create_automation_action_team_association_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_action_team_association: #{e}"
end
```

#### Using the create_automation_action_team_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationActionTeamAssociationRequest>, Integer, Hash)> create_automation_action_team_association_with_http_info(accept, content_type, id, create_automation_action_team_association_request)

```ruby
begin
  # Associate an Automation Action with a team
  data, status_code, headers = api_instance.create_automation_action_team_association_with_http_info(accept, content_type, id, create_automation_action_team_association_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationActionTeamAssociationRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_action_team_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_automation_action_team_association_request** | [**CreateAutomationActionTeamAssociationRequest**](CreateAutomationActionTeamAssociationRequest.md) |  |  |

### Return type

[**CreateAutomationActionTeamAssociationRequest**](CreateAutomationActionTeamAssociationRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automation_actions_runner

> <CreateAutomationActionsRunner201Response> create_automation_actions_runner(accept, content_type, create_automation_actions_runner_request)

Create an Automation Action runner.

Create a Process Automation or a Runbook Automation runner. 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
create_automation_actions_runner_request = OpenapiClient::CreateAutomationActionsRunnerRequest.new({runner: OpenapiClient::AutomationActionsRunnerRunbookPostBody.new({runner_type: OpenapiClient::AutomationActionsRunnerTypeEnum::SIDECAR, name: 'us-west-2 prod runner', description: 'us-west-2 runner provisioned in the production environment by the SRE team', runbook_base_uri: 'subdomain', runbook_api_key: 'runbook_api_key_example'})}) # CreateAutomationActionsRunnerRequest | 

begin
  # Create an Automation Action runner.
  result = api_instance.create_automation_actions_runner(accept, content_type, create_automation_actions_runner_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_actions_runner: #{e}"
end
```

#### Using the create_automation_actions_runner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationActionsRunner201Response>, Integer, Hash)> create_automation_actions_runner_with_http_info(accept, content_type, create_automation_actions_runner_request)

```ruby
begin
  # Create an Automation Action runner.
  data, status_code, headers = api_instance.create_automation_actions_runner_with_http_info(accept, content_type, create_automation_actions_runner_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationActionsRunner201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_actions_runner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_automation_actions_runner_request** | [**CreateAutomationActionsRunnerRequest**](CreateAutomationActionsRunnerRequest.md) |  |  |

### Return type

[**CreateAutomationActionsRunner201Response**](CreateAutomationActionsRunner201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_automation_actions_runner_team_association

> <CreateAutomationActionTeamAssociationRequest> create_automation_actions_runner_team_association(accept, content_type, id, create_automation_action_team_association_request)

Associate a runner with a team

Associate a runner with a team 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
create_automation_action_team_association_request = OpenapiClient::CreateAutomationActionTeamAssociationRequest.new({team: OpenapiClient::TeamReference.new({type: 'team_reference'})}) # CreateAutomationActionTeamAssociationRequest | 

begin
  # Associate a runner with a team
  result = api_instance.create_automation_actions_runner_team_association(accept, content_type, id, create_automation_action_team_association_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_actions_runner_team_association: #{e}"
end
```

#### Using the create_automation_actions_runner_team_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationActionTeamAssociationRequest>, Integer, Hash)> create_automation_actions_runner_team_association_with_http_info(accept, content_type, id, create_automation_action_team_association_request)

```ruby
begin
  # Associate a runner with a team
  data, status_code, headers = api_instance.create_automation_actions_runner_team_association_with_http_info(accept, content_type, id, create_automation_action_team_association_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationActionTeamAssociationRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->create_automation_actions_runner_team_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_automation_action_team_association_request** | [**CreateAutomationActionTeamAssociationRequest**](CreateAutomationActionTeamAssociationRequest.md) |  |  |

### Return type

[**CreateAutomationActionTeamAssociationRequest**](CreateAutomationActionTeamAssociationRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_automation_action

> delete_automation_action(accept, content_type, id)

Delete an Automation Action

Delete an Automation Action 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete an Automation Action
  api_instance.delete_automation_action(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_action: #{e}"
end
```

#### Using the delete_automation_action_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_automation_action_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete an Automation Action
  data, status_code, headers = api_instance.delete_automation_action_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_action_with_http_info: #{e}"
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


## delete_automation_action_service_association

> delete_automation_action_service_association(accept, content_type, id, service_id)

Disassociate an Automation Action from a service

Disassociate an Automation Action from a service 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
service_id = 'service_id_example' # String | The service ID

begin
  # Disassociate an Automation Action from a service
  api_instance.delete_automation_action_service_association(accept, content_type, id, service_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_action_service_association: #{e}"
end
```

#### Using the delete_automation_action_service_association_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_automation_action_service_association_with_http_info(accept, content_type, id, service_id)

```ruby
begin
  # Disassociate an Automation Action from a service
  data, status_code, headers = api_instance.delete_automation_action_service_association_with_http_info(accept, content_type, id, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_action_service_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **service_id** | **String** | The service ID |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_automation_action_team_association

> delete_automation_action_team_association(accept, content_type, id, team_id)

Disassociate an Automation Action from a team

Disassociate an Automation Action from a team 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
team_id = 'team_id_example' # String | The team ID

begin
  # Disassociate an Automation Action from a team
  api_instance.delete_automation_action_team_association(accept, content_type, id, team_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_action_team_association: #{e}"
end
```

#### Using the delete_automation_action_team_association_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_automation_action_team_association_with_http_info(accept, content_type, id, team_id)

```ruby
begin
  # Disassociate an Automation Action from a team
  data, status_code, headers = api_instance.delete_automation_action_team_association_with_http_info(accept, content_type, id, team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_action_team_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **team_id** | **String** | The team ID |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_automation_actions_runner

> delete_automation_actions_runner(accept, content_type, id)

Delete an Automation Action runner

Delete an Automation Action runner 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete an Automation Action runner
  api_instance.delete_automation_actions_runner(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_actions_runner: #{e}"
end
```

#### Using the delete_automation_actions_runner_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_automation_actions_runner_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete an Automation Action runner
  data, status_code, headers = api_instance.delete_automation_actions_runner_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_actions_runner_with_http_info: #{e}"
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


## delete_automation_actions_runner_team_association

> delete_automation_actions_runner_team_association(accept, content_type, id, team_id)

Disassociate a runner from a team

Disassociates a runner from a team 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
team_id = 'team_id_example' # String | The team ID

begin
  # Disassociate a runner from a team
  api_instance.delete_automation_actions_runner_team_association(accept, content_type, id, team_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_actions_runner_team_association: #{e}"
end
```

#### Using the delete_automation_actions_runner_team_association_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_automation_actions_runner_team_association_with_http_info(accept, content_type, id, team_id)

```ruby
begin
  # Disassociate a runner from a team
  data, status_code, headers = api_instance.delete_automation_actions_runner_team_association_with_http_info(accept, content_type, id, team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->delete_automation_actions_runner_team_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **team_id** | **String** | The team ID |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_all_automation_actions

> <GetAllAutomationActions200Response> get_all_automation_actions(accept, content_type, opts)

List Automation Actions

Lists Automation Actions matching provided query params.  The returned records are sorted by action name in alphabetical order.  See [`Cursor-based pagination`](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set. 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The minimum of the `limit` parameter used in the request or the maximum request size of the API.
  cursor: 'cursor_example', # String | Optional parameter used to request the \"next\" set of results from an API.  The value provided here is most commonly obtained from the `next_cursor` field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  name: 'name_example', # String | Filters results to include the ones matching the name (case insensitive substring matching)
  runner_id: 'runner_id_example', # String | Filters results to include the ones linked to the specified runner. Specifying the value `any` filters results to include the ones linked to runners only, thus omitting the results not linked to runners. 
  classification: OpenapiClient::AutomationActionsActionClassificationEnum::DIAGNOSTIC, # AutomationActionsActionClassificationEnum | Filters results to include the ones matching the specified classification (aka category)
  team_id: 'team_id_example', # String | Filters results to include the ones associated with the specified team.
  service_id: 'service_id_example', # String | Filters results to include the ones associated with the specified service
  action_type: 'script' # String | Filters results to include the ones matching the specified action type
}

begin
  # List Automation Actions
  result = api_instance.get_all_automation_actions(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_all_automation_actions: #{e}"
end
```

#### Using the get_all_automation_actions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllAutomationActions200Response>, Integer, Hash)> get_all_automation_actions_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Automation Actions
  data, status_code, headers = api_instance.get_all_automation_actions_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllAutomationActions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_all_automation_actions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [optional] |
| **cursor** | **String** | Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set.  | [optional] |
| **name** | **String** | Filters results to include the ones matching the name (case insensitive substring matching) | [optional] |
| **runner_id** | **String** | Filters results to include the ones linked to the specified runner. Specifying the value &#x60;any&#x60; filters results to include the ones linked to runners only, thus omitting the results not linked to runners.  | [optional] |
| **classification** | [**AutomationActionsActionClassificationEnum**](.md) | Filters results to include the ones matching the specified classification (aka category) | [optional] |
| **team_id** | **String** | Filters results to include the ones associated with the specified team. | [optional] |
| **service_id** | **String** | Filters results to include the ones associated with the specified service | [optional] |
| **action_type** | **String** | Filters results to include the ones matching the specified action type | [optional] |

### Return type

[**GetAllAutomationActions200Response**](GetAllAutomationActions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_action

> <CreateAutomationAction201Response> get_automation_action(accept, content_type, id)

Get an Automation Action

Get an Automation Action 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get an Automation Action
  result = api_instance.get_automation_action(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_action: #{e}"
end
```

#### Using the get_automation_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationAction201Response>, Integer, Hash)> get_automation_action_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an Automation Action
  data, status_code, headers = api_instance.get_automation_action_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationAction201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**CreateAutomationAction201Response**](CreateAutomationAction201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_action_service_association

> <GetAutomationActionsActionServiceAssociation200Response> get_automation_actions_action_service_association(accept, content_type, id, service_id)

Get the details of an Automation Action / service relation

Gets the details of a Automation Action / service relation

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
service_id = 'service_id_example' # String | The service ID

begin
  # Get the details of an Automation Action / service relation
  result = api_instance.get_automation_actions_action_service_association(accept, content_type, id, service_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_action_service_association: #{e}"
end
```

#### Using the get_automation_actions_action_service_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsActionServiceAssociation200Response>, Integer, Hash)> get_automation_actions_action_service_association_with_http_info(accept, content_type, id, service_id)

```ruby
begin
  # Get the details of an Automation Action / service relation
  data, status_code, headers = api_instance.get_automation_actions_action_service_association_with_http_info(accept, content_type, id, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsActionServiceAssociation200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_action_service_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **service_id** | **String** | The service ID |  |

### Return type

[**GetAutomationActionsActionServiceAssociation200Response**](GetAutomationActionsActionServiceAssociation200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_action_service_associations

> <GetAutomationActionsActionServiceAssociations200Response> get_automation_actions_action_service_associations(accept, content_type, id)

Get all service references associated with an Automation Action

Gets all service references associated with an Automation Action

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get all service references associated with an Automation Action
  result = api_instance.get_automation_actions_action_service_associations(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_action_service_associations: #{e}"
end
```

#### Using the get_automation_actions_action_service_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsActionServiceAssociations200Response>, Integer, Hash)> get_automation_actions_action_service_associations_with_http_info(accept, content_type, id)

```ruby
begin
  # Get all service references associated with an Automation Action
  data, status_code, headers = api_instance.get_automation_actions_action_service_associations_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsActionServiceAssociations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_action_service_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetAutomationActionsActionServiceAssociations200Response**](GetAutomationActionsActionServiceAssociations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_action_team_association

> <GetAutomationActionsActionTeamAssociation200Response> get_automation_actions_action_team_association(accept, content_type, id, team_id)

Get the details of an Automation Action / team relation

Gets the details of an Automation Action / team relation

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
team_id = 'team_id_example' # String | The team ID

begin
  # Get the details of an Automation Action / team relation
  result = api_instance.get_automation_actions_action_team_association(accept, content_type, id, team_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_action_team_association: #{e}"
end
```

#### Using the get_automation_actions_action_team_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsActionTeamAssociation200Response>, Integer, Hash)> get_automation_actions_action_team_association_with_http_info(accept, content_type, id, team_id)

```ruby
begin
  # Get the details of an Automation Action / team relation
  data, status_code, headers = api_instance.get_automation_actions_action_team_association_with_http_info(accept, content_type, id, team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsActionTeamAssociation200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_action_team_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **team_id** | **String** | The team ID |  |

### Return type

[**GetAutomationActionsActionTeamAssociation200Response**](GetAutomationActionsActionTeamAssociation200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_action_team_associations

> <GetAutomationActionsActionTeamAssociations200Response> get_automation_actions_action_team_associations(accept, content_type, id)

Get all team references associated with an Automation Action

Gets all team references associated with an Automation Action

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get all team references associated with an Automation Action
  result = api_instance.get_automation_actions_action_team_associations(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_action_team_associations: #{e}"
end
```

#### Using the get_automation_actions_action_team_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsActionTeamAssociations200Response>, Integer, Hash)> get_automation_actions_action_team_associations_with_http_info(accept, content_type, id)

```ruby
begin
  # Get all team references associated with an Automation Action
  data, status_code, headers = api_instance.get_automation_actions_action_team_associations_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsActionTeamAssociations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_action_team_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetAutomationActionsActionTeamAssociations200Response**](GetAutomationActionsActionTeamAssociations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_invocation

> <GetAutomationActionsInvocation200Response> get_automation_actions_invocation(accept, content_type, id)

Get an Invocation

Get an Automation Action Invocation 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get an Invocation
  result = api_instance.get_automation_actions_invocation(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_invocation: #{e}"
end
```

#### Using the get_automation_actions_invocation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsInvocation200Response>, Integer, Hash)> get_automation_actions_invocation_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an Invocation
  data, status_code, headers = api_instance.get_automation_actions_invocation_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsInvocation200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_invocation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetAutomationActionsInvocation200Response**](GetAutomationActionsInvocation200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_runner

> <GetAutomationActionsRunner200Response> get_automation_actions_runner(accept, content_type, id)

Get an Automation Action runner

Get an Automation Action runner 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get an Automation Action runner
  result = api_instance.get_automation_actions_runner(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_runner: #{e}"
end
```

#### Using the get_automation_actions_runner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsRunner200Response>, Integer, Hash)> get_automation_actions_runner_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an Automation Action runner
  data, status_code, headers = api_instance.get_automation_actions_runner_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsRunner200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_runner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetAutomationActionsRunner200Response**](GetAutomationActionsRunner200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_runner_team_association

> <GetAutomationActionsActionTeamAssociation200Response> get_automation_actions_runner_team_association(accept, content_type, id, team_id)

Get the details of a runner / team relation

Gets the details of a runner / team relation

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
team_id = 'team_id_example' # String | The team ID

begin
  # Get the details of a runner / team relation
  result = api_instance.get_automation_actions_runner_team_association(accept, content_type, id, team_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_runner_team_association: #{e}"
end
```

#### Using the get_automation_actions_runner_team_association_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsActionTeamAssociation200Response>, Integer, Hash)> get_automation_actions_runner_team_association_with_http_info(accept, content_type, id, team_id)

```ruby
begin
  # Get the details of a runner / team relation
  data, status_code, headers = api_instance.get_automation_actions_runner_team_association_with_http_info(accept, content_type, id, team_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsActionTeamAssociation200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_runner_team_association_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **team_id** | **String** | The team ID |  |

### Return type

[**GetAutomationActionsActionTeamAssociation200Response**](GetAutomationActionsActionTeamAssociation200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_runner_team_associations

> <GetAutomationActionsActionTeamAssociations200Response> get_automation_actions_runner_team_associations(accept, content_type, id)

Get all team references associated with a runner

Gets all team references associated with a runner

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get all team references associated with a runner
  result = api_instance.get_automation_actions_runner_team_associations(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_runner_team_associations: #{e}"
end
```

#### Using the get_automation_actions_runner_team_associations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsActionTeamAssociations200Response>, Integer, Hash)> get_automation_actions_runner_team_associations_with_http_info(accept, content_type, id)

```ruby
begin
  # Get all team references associated with a runner
  data, status_code, headers = api_instance.get_automation_actions_runner_team_associations_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsActionTeamAssociations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_runner_team_associations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetAutomationActionsActionTeamAssociations200Response**](GetAutomationActionsActionTeamAssociations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_automation_actions_runners

> <GetAutomationActionsRunners200Response> get_automation_actions_runners(accept, content_type, opts)

List Automation Action runners

Lists Automation Action runners matching provided query params. The returned records are sorted by runner name in alphabetical order.  See [`Cursor-based pagination`](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set. 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The minimum of the `limit` parameter used in the request or the maximum request size of the API.
  cursor: 'cursor_example', # String | Optional parameter used to request the \"next\" set of results from an API.  The value provided here is most commonly obtained from the `next_cursor` field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  name: 'name_example', # String | Filters results to include the ones matching the name (case insensitive substring matching)
  include: ['associated_actions'] # Array<String> | Includes additional data elements into the response
}

begin
  # List Automation Action runners
  result = api_instance.get_automation_actions_runners(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_runners: #{e}"
end
```

#### Using the get_automation_actions_runners_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsRunners200Response>, Integer, Hash)> get_automation_actions_runners_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Automation Action runners
  data, status_code, headers = api_instance.get_automation_actions_runners_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsRunners200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->get_automation_actions_runners_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [optional] |
| **cursor** | **String** | Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set.  | [optional] |
| **name** | **String** | Filters results to include the ones matching the name (case insensitive substring matching) | [optional] |
| **include** | [**Array&lt;String&gt;**](String.md) | Includes additional data elements into the response | [optional] |

### Return type

[**GetAutomationActionsRunners200Response**](GetAutomationActionsRunners200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_automation_action_invocations

> <ListAutomationActionInvocations200Response> list_automation_action_invocations(accept, content_type, opts)

List Invocations

List Invocations 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  invocation_state: 'prepared', # String | Invocation state
  not_invocation_state: TODO, # Schema | Invocation state inverse filter (matches invocations NOT in the specified state)
  incident_id: 'Q2LAR4ADCXC8IB', # String | Incident ID
  action_id: '01DAW70HK24JZORNE0P9C2V1L9' # String | Action ID
}

begin
  # List Invocations
  result = api_instance.list_automation_action_invocations(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->list_automation_action_invocations: #{e}"
end
```

#### Using the list_automation_action_invocations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListAutomationActionInvocations200Response>, Integer, Hash)> list_automation_action_invocations_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Invocations
  data, status_code, headers = api_instance.list_automation_action_invocations_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListAutomationActionInvocations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->list_automation_action_invocations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **invocation_state** | **String** | Invocation state | [optional] |
| **not_invocation_state** | [**Schema**](.md) | Invocation state inverse filter (matches invocations NOT in the specified state) | [optional] |
| **incident_id** | **String** | Incident ID | [optional] |
| **action_id** | **String** | Action ID | [optional] |

### Return type

[**ListAutomationActionInvocations200Response**](ListAutomationActionInvocations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_automation_action

> <CreateAutomationAction201Response> update_automation_action(accept, content_type, id, update_automation_action_request)

Update an Automation Action

Updates an Automation Action 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
update_automation_action_request = OpenapiClient::UpdateAutomationActionRequest.new({action: OpenapiClient::AutomationActionsProcessAutomationJobActionPutBody.new}) # UpdateAutomationActionRequest | 

begin
  # Update an Automation Action
  result = api_instance.update_automation_action(accept, content_type, id, update_automation_action_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->update_automation_action: #{e}"
end
```

#### Using the update_automation_action_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateAutomationAction201Response>, Integer, Hash)> update_automation_action_with_http_info(accept, content_type, id, update_automation_action_request)

```ruby
begin
  # Update an Automation Action
  data, status_code, headers = api_instance.update_automation_action_with_http_info(accept, content_type, id, update_automation_action_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateAutomationAction201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->update_automation_action_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **update_automation_action_request** | [**UpdateAutomationActionRequest**](UpdateAutomationActionRequest.md) |  |  |

### Return type

[**CreateAutomationAction201Response**](CreateAutomationAction201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_automation_actions_runner

> <GetAutomationActionsRunner200Response> update_automation_actions_runner(accept, content_type, id, update_automation_actions_runner_request)

Update an Automation Action runner

Update an Automation Action runner 

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

api_instance = OpenapiClient::AutomationActionsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
update_automation_actions_runner_request = OpenapiClient::UpdateAutomationActionsRunnerRequest.new({runner: OpenapiClient::AutomationActionsRunnerRunbookBody.new}) # UpdateAutomationActionsRunnerRequest | 

begin
  # Update an Automation Action runner
  result = api_instance.update_automation_actions_runner(accept, content_type, id, update_automation_actions_runner_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->update_automation_actions_runner: #{e}"
end
```

#### Using the update_automation_actions_runner_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAutomationActionsRunner200Response>, Integer, Hash)> update_automation_actions_runner_with_http_info(accept, content_type, id, update_automation_actions_runner_request)

```ruby
begin
  # Update an Automation Action runner
  data, status_code, headers = api_instance.update_automation_actions_runner_with_http_info(accept, content_type, id, update_automation_actions_runner_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAutomationActionsRunner200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AutomationActionsApi->update_automation_actions_runner_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **update_automation_actions_runner_request** | [**UpdateAutomationActionsRunnerRequest**](UpdateAutomationActionsRunnerRequest.md) |  |  |

### Return type

[**GetAutomationActionsRunner200Response**](GetAutomationActionsRunner200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

