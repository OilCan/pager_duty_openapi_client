# OpenapiClient::EventOrchestrationsApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_cache_var_on_global_orch**](EventOrchestrationsApi.md#create_cache_var_on_global_orch) | **POST** /event_orchestrations/{id}/cache_variables | Create a Cache Variable for a Global Event Orchestration |
| [**create_cache_var_on_service_orch**](EventOrchestrationsApi.md#create_cache_var_on_service_orch) | **POST** /event_orchestrations/services/{service_id}/cache_variables | Create a Cache Variable for a Service Event Orchestration |
| [**delete_cache_var_on_global_orch**](EventOrchestrationsApi.md#delete_cache_var_on_global_orch) | **DELETE** /event_orchestrations/{id}/cache_variables/{cache_variable_id} | Delete a Cache Variable for a Global Event Orchestration |
| [**delete_cache_var_on_service_orch**](EventOrchestrationsApi.md#delete_cache_var_on_service_orch) | **DELETE** /event_orchestrations/services/{service_id}/cache_variables/{cache_variable_id} | Delete a Cache Variable for a Service Event Orchestration |
| [**delete_orchestration**](EventOrchestrationsApi.md#delete_orchestration) | **DELETE** /event_orchestrations/{id} | Delete an Orchestration |
| [**delete_orchestration_integration**](EventOrchestrationsApi.md#delete_orchestration_integration) | **DELETE** /event_orchestrations/{id}/integrations/{integration_id} | Delete an Integration for an Event Orchestration |
| [**get_cache_var_on_global_orch**](EventOrchestrationsApi.md#get_cache_var_on_global_orch) | **GET** /event_orchestrations/{id}/cache_variables/{cache_variable_id} | Get a Cache Variable for a Global Event Orchestration |
| [**get_cache_var_on_service_orch**](EventOrchestrationsApi.md#get_cache_var_on_service_orch) | **GET** /event_orchestrations/services/{service_id}/cache_variables/{cache_variable_id} | Get a Cache Variable for a Service Event Orchestration |
| [**get_orch_active_status**](EventOrchestrationsApi.md#get_orch_active_status) | **GET** /event_orchestrations/services/{service_id}/active | Get the Service Orchestration active status for a Service |
| [**get_orch_path_global**](EventOrchestrationsApi.md#get_orch_path_global) | **GET** /event_orchestrations/{id}/global | Get the Global Orchestration for an Event Orchestration |
| [**get_orch_path_router**](EventOrchestrationsApi.md#get_orch_path_router) | **GET** /event_orchestrations/{id}/router | Get the Router for an Event Orchestration |
| [**get_orch_path_service**](EventOrchestrationsApi.md#get_orch_path_service) | **GET** /event_orchestrations/services/{service_id} | Get the Service Orchestration for a Service |
| [**get_orch_path_unrouted**](EventOrchestrationsApi.md#get_orch_path_unrouted) | **GET** /event_orchestrations/{id}/unrouted | Get the Unrouted Orchestration for an Event Orchestration |
| [**get_orchestration**](EventOrchestrationsApi.md#get_orchestration) | **GET** /event_orchestrations/{id} | Get an Orchestration |
| [**get_orchestration_integration**](EventOrchestrationsApi.md#get_orchestration_integration) | **GET** /event_orchestrations/{id}/integrations/{integration_id} | Get an Integration for an Event Orchestration |
| [**list_cache_var_on_global_orch**](EventOrchestrationsApi.md#list_cache_var_on_global_orch) | **GET** /event_orchestrations/{id}/cache_variables | List Cache Variables for a Global Event Orchestration |
| [**list_cache_var_on_service_orch**](EventOrchestrationsApi.md#list_cache_var_on_service_orch) | **GET** /event_orchestrations/services/{service_id}/cache_variables | List Cache Variables for a Service Event Orchestration |
| [**list_event_orchestrations**](EventOrchestrationsApi.md#list_event_orchestrations) | **GET** /event_orchestrations | List Event Orchestrations |
| [**list_orchestration_integrations**](EventOrchestrationsApi.md#list_orchestration_integrations) | **GET** /event_orchestrations/{id}/integrations | List Integrations for an Event Orchestration |
| [**migrate_orchestration_integration**](EventOrchestrationsApi.md#migrate_orchestration_integration) | **POST** /event_orchestrations/{id}/integrations/migration | Migrate an Integration from one Event Orchestration to another |
| [**post_orchestration**](EventOrchestrationsApi.md#post_orchestration) | **POST** /event_orchestrations | Create an Orchestration |
| [**post_orchestration_integration**](EventOrchestrationsApi.md#post_orchestration_integration) | **POST** /event_orchestrations/{id}/integrations | Create an Integration for an Event Orchestration |
| [**update_cache_var_on_global_orch**](EventOrchestrationsApi.md#update_cache_var_on_global_orch) | **PUT** /event_orchestrations/{id}/cache_variables/{cache_variable_id} | Update a Cache Variable for a Global Event Orchestration |
| [**update_cache_var_on_service_orch**](EventOrchestrationsApi.md#update_cache_var_on_service_orch) | **PUT** /event_orchestrations/services/{service_id}/cache_variables/{cache_variable_id} | Update a Cache Variable for a Service Event Orchestration |
| [**update_orch_active_status**](EventOrchestrationsApi.md#update_orch_active_status) | **PUT** /event_orchestrations/services/{service_id}/active | Update the Service Orchestration active status for a Service |
| [**update_orch_path_global**](EventOrchestrationsApi.md#update_orch_path_global) | **PUT** /event_orchestrations/{id}/global | Update the Global Orchestration for an Event Orchestration |
| [**update_orch_path_router**](EventOrchestrationsApi.md#update_orch_path_router) | **PUT** /event_orchestrations/{id}/router | Update the Router for an Event Orchestration |
| [**update_orch_path_service**](EventOrchestrationsApi.md#update_orch_path_service) | **PUT** /event_orchestrations/services/{service_id} | Update the Service Orchestration for a Service |
| [**update_orch_path_unrouted**](EventOrchestrationsApi.md#update_orch_path_unrouted) | **PUT** /event_orchestrations/{id}/unrouted | Update the Unrouted Orchestration for an Event Orchestration |
| [**update_orchestration**](EventOrchestrationsApi.md#update_orchestration) | **PUT** /event_orchestrations/{id} | Update an Orchestration |
| [**update_orchestration_integration**](EventOrchestrationsApi.md#update_orchestration_integration) | **PUT** /event_orchestrations/{id}/integrations/{integration_id} | Update an Integration for an Event Orchestration |


## create_cache_var_on_global_orch

> <CreateCacheVarOnGlobalOrch200Response> create_cache_var_on_global_orch(accept, content_type, id, opts)

Create a Cache Variable for a Global Event Orchestration

Create a Cache Variable for a Global Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
opts = {
  create_cache_var_on_global_orch_request: OpenapiClient::CreateCacheVarOnGlobalOrchRequest.new({cache_variable: OpenapiClient::OrchestrationCacheVariable.new({name: 'name_example', configuration: OpenapiClient::OrchestrationCacheVariableConfigurationOneOf.new({type: 'recent_value', source: 'event.summary', regex: 'regex_example'})})}) # CreateCacheVarOnGlobalOrchRequest | 
}

begin
  # Create a Cache Variable for a Global Event Orchestration
  result = api_instance.create_cache_var_on_global_orch(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->create_cache_var_on_global_orch: #{e}"
end
```

#### Using the create_cache_var_on_global_orch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCacheVarOnGlobalOrch200Response>, Integer, Hash)> create_cache_var_on_global_orch_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Create a Cache Variable for a Global Event Orchestration
  data, status_code, headers = api_instance.create_cache_var_on_global_orch_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCacheVarOnGlobalOrch200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->create_cache_var_on_global_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **create_cache_var_on_global_orch_request** | [**CreateCacheVarOnGlobalOrchRequest**](CreateCacheVarOnGlobalOrchRequest.md) |  | [optional] |

### Return type

[**CreateCacheVarOnGlobalOrch200Response**](CreateCacheVarOnGlobalOrch200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_cache_var_on_service_orch

> <CreateCacheVarOnGlobalOrch200Response> create_cache_var_on_service_orch(accept, content_type, service_id, opts)

Create a Cache Variable for a Service Event Orchestration

Create a Cache Variable for a Service Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID
opts = {
  create_cache_var_on_global_orch_request: OpenapiClient::CreateCacheVarOnGlobalOrchRequest.new({cache_variable: OpenapiClient::OrchestrationCacheVariable.new({name: 'name_example', configuration: OpenapiClient::OrchestrationCacheVariableConfigurationOneOf.new({type: 'recent_value', source: 'event.summary', regex: 'regex_example'})})}) # CreateCacheVarOnGlobalOrchRequest | 
}

begin
  # Create a Cache Variable for a Service Event Orchestration
  result = api_instance.create_cache_var_on_service_orch(accept, content_type, service_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->create_cache_var_on_service_orch: #{e}"
end
```

#### Using the create_cache_var_on_service_orch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCacheVarOnGlobalOrch200Response>, Integer, Hash)> create_cache_var_on_service_orch_with_http_info(accept, content_type, service_id, opts)

```ruby
begin
  # Create a Cache Variable for a Service Event Orchestration
  data, status_code, headers = api_instance.create_cache_var_on_service_orch_with_http_info(accept, content_type, service_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCacheVarOnGlobalOrch200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->create_cache_var_on_service_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |
| **create_cache_var_on_global_orch_request** | [**CreateCacheVarOnGlobalOrchRequest**](CreateCacheVarOnGlobalOrchRequest.md) |  | [optional] |

### Return type

[**CreateCacheVarOnGlobalOrch200Response**](CreateCacheVarOnGlobalOrch200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_cache_var_on_global_orch

> delete_cache_var_on_global_orch(accept, content_type, id, cache_variable_id)

Delete a Cache Variable for a Global Event Orchestration

Delete a Cache Variable for a Global Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
cache_variable_id = 'cache_variable_id_example' # String | The ID of a Cache Variable.

begin
  # Delete a Cache Variable for a Global Event Orchestration
  api_instance.delete_cache_var_on_global_orch(accept, content_type, id, cache_variable_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->delete_cache_var_on_global_orch: #{e}"
end
```

#### Using the delete_cache_var_on_global_orch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cache_var_on_global_orch_with_http_info(accept, content_type, id, cache_variable_id)

```ruby
begin
  # Delete a Cache Variable for a Global Event Orchestration
  data, status_code, headers = api_instance.delete_cache_var_on_global_orch_with_http_info(accept, content_type, id, cache_variable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->delete_cache_var_on_global_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **cache_variable_id** | **String** | The ID of a Cache Variable. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_cache_var_on_service_orch

> delete_cache_var_on_service_orch(accept, content_type, service_id, cache_variable_id)

Delete a Cache Variable for a Service Event Orchestration

Delete a Cache Variable for a Service Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID
cache_variable_id = 'cache_variable_id_example' # String | The ID of a Cache Variable.

begin
  # Delete a Cache Variable for a Service Event Orchestration
  api_instance.delete_cache_var_on_service_orch(accept, content_type, service_id, cache_variable_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->delete_cache_var_on_service_orch: #{e}"
end
```

#### Using the delete_cache_var_on_service_orch_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_cache_var_on_service_orch_with_http_info(accept, content_type, service_id, cache_variable_id)

```ruby
begin
  # Delete a Cache Variable for a Service Event Orchestration
  data, status_code, headers = api_instance.delete_cache_var_on_service_orch_with_http_info(accept, content_type, service_id, cache_variable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->delete_cache_var_on_service_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |
| **cache_variable_id** | **String** | The ID of a Cache Variable. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_orchestration

> delete_orchestration(accept, content_type, id)

Delete an Orchestration

Delete a Global Event Orchestration.  Once deleted, you will no longer be able to ingest events into PagerDuty using this Orchestration's Routing Key.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.

begin
  # Delete an Orchestration
  api_instance.delete_orchestration(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->delete_orchestration: #{e}"
end
```

#### Using the delete_orchestration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_orchestration_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete an Orchestration
  data, status_code, headers = api_instance.delete_orchestration_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->delete_orchestration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_orchestration_integration

> delete_orchestration_integration(accept, content_type, id, integration_id)

Delete an Integration for an Event Orchestration

Delete an Integration and its associated Routing Key.  Once deleted, PagerDuty will drop all future events sent to PagerDuty using the Routing Key.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
integration_id = 'integration_id_example' # String | The ID of an Integration.

begin
  # Delete an Integration for an Event Orchestration
  api_instance.delete_orchestration_integration(accept, content_type, id, integration_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->delete_orchestration_integration: #{e}"
end
```

#### Using the delete_orchestration_integration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_orchestration_integration_with_http_info(accept, content_type, id, integration_id)

```ruby
begin
  # Delete an Integration for an Event Orchestration
  data, status_code, headers = api_instance.delete_orchestration_integration_with_http_info(accept, content_type, id, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->delete_orchestration_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **integration_id** | **String** | The ID of an Integration. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cache_var_on_global_orch

> <CreateCacheVarOnGlobalOrch200Response> get_cache_var_on_global_orch(accept, content_type, id, cache_variable_id)

Get a Cache Variable for a Global Event Orchestration

Get a Cache Variable for a Global Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
cache_variable_id = 'cache_variable_id_example' # String | The ID of a Cache Variable.

begin
  # Get a Cache Variable for a Global Event Orchestration
  result = api_instance.get_cache_var_on_global_orch(accept, content_type, id, cache_variable_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_cache_var_on_global_orch: #{e}"
end
```

#### Using the get_cache_var_on_global_orch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCacheVarOnGlobalOrch200Response>, Integer, Hash)> get_cache_var_on_global_orch_with_http_info(accept, content_type, id, cache_variable_id)

```ruby
begin
  # Get a Cache Variable for a Global Event Orchestration
  data, status_code, headers = api_instance.get_cache_var_on_global_orch_with_http_info(accept, content_type, id, cache_variable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCacheVarOnGlobalOrch200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_cache_var_on_global_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **cache_variable_id** | **String** | The ID of a Cache Variable. |  |

### Return type

[**CreateCacheVarOnGlobalOrch200Response**](CreateCacheVarOnGlobalOrch200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_cache_var_on_service_orch

> <CreateCacheVarOnGlobalOrch200Response> get_cache_var_on_service_orch(accept, content_type, service_id, cache_variable_id)

Get a Cache Variable for a Service Event Orchestration

Get a Cache Variable for a Service Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID
cache_variable_id = 'cache_variable_id_example' # String | The ID of a Cache Variable.

begin
  # Get a Cache Variable for a Service Event Orchestration
  result = api_instance.get_cache_var_on_service_orch(accept, content_type, service_id, cache_variable_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_cache_var_on_service_orch: #{e}"
end
```

#### Using the get_cache_var_on_service_orch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCacheVarOnGlobalOrch200Response>, Integer, Hash)> get_cache_var_on_service_orch_with_http_info(accept, content_type, service_id, cache_variable_id)

```ruby
begin
  # Get a Cache Variable for a Service Event Orchestration
  data, status_code, headers = api_instance.get_cache_var_on_service_orch_with_http_info(accept, content_type, service_id, cache_variable_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCacheVarOnGlobalOrch200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_cache_var_on_service_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |
| **cache_variable_id** | **String** | The ID of a Cache Variable. |  |

### Return type

[**CreateCacheVarOnGlobalOrch200Response**](CreateCacheVarOnGlobalOrch200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orch_active_status

> <GetOrchActiveStatus200Response> get_orch_active_status(accept, content_type, service_id)

Get the Service Orchestration active status for a Service

Get a Service Orchestration's active status.  A Service Orchestration allows you to set an active status based on whether an event will be evaluated against a service orchestration path (true) or service ruleset (false).  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID

begin
  # Get the Service Orchestration active status for a Service
  result = api_instance.get_orch_active_status(accept, content_type, service_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_active_status: #{e}"
end
```

#### Using the get_orch_active_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrchActiveStatus200Response>, Integer, Hash)> get_orch_active_status_with_http_info(accept, content_type, service_id)

```ruby
begin
  # Get the Service Orchestration active status for a Service
  data, status_code, headers = api_instance.get_orch_active_status_with_http_info(accept, content_type, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrchActiveStatus200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_active_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |

### Return type

[**GetOrchActiveStatus200Response**](GetOrchActiveStatus200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orch_path_global

> <OrchestrationGlobal> get_orch_path_global(accept, content_type, id)

Get the Global Orchestration for an Event Orchestration

Get the Global Orchestration for an Event Orchestration.  Global Orchestration Rules allows you to create a set of Event Rules. These rules evaluate against all Events sent to an Event Orchestration. When a matching rule is found, it can modify and enhance the event and can route the event to another set of Global Rules within this Orchestration for further processing.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.

begin
  # Get the Global Orchestration for an Event Orchestration
  result = api_instance.get_orch_path_global(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_path_global: #{e}"
end
```

#### Using the get_orch_path_global_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrchestrationGlobal>, Integer, Hash)> get_orch_path_global_with_http_info(accept, content_type, id)

```ruby
begin
  # Get the Global Orchestration for an Event Orchestration
  data, status_code, headers = api_instance.get_orch_path_global_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrchestrationGlobal>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_path_global_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |

### Return type

[**OrchestrationGlobal**](OrchestrationGlobal.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orch_path_router

> <OrchestrationRouter> get_orch_path_router(accept, content_type, id)

Get the Router for an Event Orchestration

Get a Global Orchestration's Routing Rules.  An Orchestration Router allows you to create a set of Event Rules. The Router evaluates Events you send to this Global Orchestration against each of its rules, one at a time, and routes the event to a specific Service based on the first rule that matches. If an event doesn't match any rules, it'll be sent to service specified in as the `catch_all` or the \"Unrouted\" Orchestration if no service is specified.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.

begin
  # Get the Router for an Event Orchestration
  result = api_instance.get_orch_path_router(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_path_router: #{e}"
end
```

#### Using the get_orch_path_router_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrchestrationRouter>, Integer, Hash)> get_orch_path_router_with_http_info(accept, content_type, id)

```ruby
begin
  # Get the Router for an Event Orchestration
  data, status_code, headers = api_instance.get_orch_path_router_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrchestrationRouter>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_path_router_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |

### Return type

[**OrchestrationRouter**](OrchestrationRouter.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orch_path_service

> <ServiceOrchestration> get_orch_path_service(accept, content_type, service_id, opts)

Get the Service Orchestration for a Service

Get a Service Orchestration.  A Service Orchestration allows you to create a set of Event Rules. The Service Orchestration evaluates Events sent to this Service against each of its rules, beginning with the rules in the \"start\" set. When a matching rule is found, it can modify and enhance the event and can route the event to another set of rules within this Service Orchestration for further processing.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID
opts = {
  include: 'migrated_metadata' # String | Array of additional Models to include in response.
}

begin
  # Get the Service Orchestration for a Service
  result = api_instance.get_orch_path_service(accept, content_type, service_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_path_service: #{e}"
end
```

#### Using the get_orch_path_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ServiceOrchestration>, Integer, Hash)> get_orch_path_service_with_http_info(accept, content_type, service_id, opts)

```ruby
begin
  # Get the Service Orchestration for a Service
  data, status_code, headers = api_instance.get_orch_path_service_with_http_info(accept, content_type, service_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ServiceOrchestration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_path_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**ServiceOrchestration**](ServiceOrchestration.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orch_path_unrouted

> <OrchestrationUnrouted> get_orch_path_unrouted(accept, content_type, id)

Get the Unrouted Orchestration for an Event Orchestration

Get a Global Event Orchestration's Rules for Unrouted events.  An Unrouted Orchestration allows you to create a set of Event Rules that will be evaluated against all events that don't match any rules in the Global Orchestration's Router. Events that reach the Unrouted Orchestration will never be routed to a specific Service.  The Unrouted Orchestration evaluates Events sent to it against each of its rules, beginning with the rules in the \"start\" set. When a matching rule is found, it can modify and enhance the event and can route the event to another set of rules within this Unrouted Orchestration for further processing.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.

begin
  # Get the Unrouted Orchestration for an Event Orchestration
  result = api_instance.get_orch_path_unrouted(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_path_unrouted: #{e}"
end
```

#### Using the get_orch_path_unrouted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<OrchestrationUnrouted>, Integer, Hash)> get_orch_path_unrouted_with_http_info(accept, content_type, id)

```ruby
begin
  # Get the Unrouted Orchestration for an Event Orchestration
  data, status_code, headers = api_instance.get_orch_path_unrouted_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <OrchestrationUnrouted>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orch_path_unrouted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |

### Return type

[**OrchestrationUnrouted**](OrchestrationUnrouted.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orchestration

> <PostOrchestration201Response> get_orchestration(accept, content_type, id)

Get an Orchestration

Get a Global Event Orchestration.  Global Event Orchestrations allow you define a set of Global Rules and Router Rules, so that when you ingest events using the Orchestration's Routing Key your events will have actions applied via the Global Rules & then routed to the correct Service by the Router Rules, based on the event's content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.

begin
  # Get an Orchestration
  result = api_instance.get_orchestration(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orchestration: #{e}"
end
```

#### Using the get_orchestration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostOrchestration201Response>, Integer, Hash)> get_orchestration_with_http_info(accept, content_type, id)

```ruby
begin
  # Get an Orchestration
  data, status_code, headers = api_instance.get_orchestration_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostOrchestration201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orchestration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |

### Return type

[**PostOrchestration201Response**](PostOrchestration201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_orchestration_integration

> <GetOrchestrationIntegration200Response> get_orchestration_integration(accept, content_type, id, integration_id)

Get an Integration for an Event Orchestration

Get an Integration associated with this Event Orchestrations.  You can use the Routing Key from this Integration to send events to PagerDuty!  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
integration_id = 'integration_id_example' # String | The ID of an Integration.

begin
  # Get an Integration for an Event Orchestration
  result = api_instance.get_orchestration_integration(accept, content_type, id, integration_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orchestration_integration: #{e}"
end
```

#### Using the get_orchestration_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrchestrationIntegration200Response>, Integer, Hash)> get_orchestration_integration_with_http_info(accept, content_type, id, integration_id)

```ruby
begin
  # Get an Integration for an Event Orchestration
  data, status_code, headers = api_instance.get_orchestration_integration_with_http_info(accept, content_type, id, integration_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrchestrationIntegration200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->get_orchestration_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **integration_id** | **String** | The ID of an Integration. |  |

### Return type

[**GetOrchestrationIntegration200Response**](GetOrchestrationIntegration200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cache_var_on_global_orch

> <ListCacheVarOnGlobalOrch200Response> list_cache_var_on_global_orch(accept, content_type, id)

List Cache Variables for a Global Event Orchestration

List Cache Variables for a Global Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.

begin
  # List Cache Variables for a Global Event Orchestration
  result = api_instance.list_cache_var_on_global_orch(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->list_cache_var_on_global_orch: #{e}"
end
```

#### Using the list_cache_var_on_global_orch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCacheVarOnGlobalOrch200Response>, Integer, Hash)> list_cache_var_on_global_orch_with_http_info(accept, content_type, id)

```ruby
begin
  # List Cache Variables for a Global Event Orchestration
  data, status_code, headers = api_instance.list_cache_var_on_global_orch_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCacheVarOnGlobalOrch200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->list_cache_var_on_global_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |

### Return type

[**ListCacheVarOnGlobalOrch200Response**](ListCacheVarOnGlobalOrch200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_cache_var_on_service_orch

> <ListCacheVarOnGlobalOrch200Response> list_cache_var_on_service_orch(accept, content_type, service_id)

List Cache Variables for a Service Event Orchestration

List Cache Variables for a Service Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID

begin
  # List Cache Variables for a Service Event Orchestration
  result = api_instance.list_cache_var_on_service_orch(accept, content_type, service_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->list_cache_var_on_service_orch: #{e}"
end
```

#### Using the list_cache_var_on_service_orch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListCacheVarOnGlobalOrch200Response>, Integer, Hash)> list_cache_var_on_service_orch_with_http_info(accept, content_type, service_id)

```ruby
begin
  # List Cache Variables for a Service Event Orchestration
  data, status_code, headers = api_instance.list_cache_var_on_service_orch_with_http_info(accept, content_type, service_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListCacheVarOnGlobalOrch200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->list_cache_var_on_service_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |

### Return type

[**ListCacheVarOnGlobalOrch200Response**](ListCacheVarOnGlobalOrch200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_event_orchestrations

> <ListEventOrchestrations200Response> list_event_orchestrations(accept, content_type, opts)

List Event Orchestrations

List all Global Event Orchestrations on an Account.  Global Event Orchestrations allow you define a set of Global Rules and Router Rules, so that when you ingest events using the Orchestration's Routing Key your events will have actions applied via the Global Rules & then routed to the correct Service by the Router Rules, based on the event's content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  sort_by: 'name:asc' # String | Used to specify the field you wish to sort the results on.
}

begin
  # List Event Orchestrations
  result = api_instance.list_event_orchestrations(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->list_event_orchestrations: #{e}"
end
```

#### Using the list_event_orchestrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListEventOrchestrations200Response>, Integer, Hash)> list_event_orchestrations_with_http_info(accept, content_type, opts)

```ruby
begin
  # List Event Orchestrations
  data, status_code, headers = api_instance.list_event_orchestrations_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListEventOrchestrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->list_event_orchestrations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **sort_by** | **String** | Used to specify the field you wish to sort the results on. | [optional][default to &#39;name:asc&#39;] |

### Return type

[**ListEventOrchestrations200Response**](ListEventOrchestrations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_orchestration_integrations

> <ListOrchestrationIntegrations200Response> list_orchestration_integrations(accept, content_type, id)

List Integrations for an Event Orchestration

List the Integrations associated with this Event Orchestrations.  You can use a Routing Key from these Integrations to send events to PagerDuty!  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.read` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.

begin
  # List Integrations for an Event Orchestration
  result = api_instance.list_orchestration_integrations(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->list_orchestration_integrations: #{e}"
end
```

#### Using the list_orchestration_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrchestrationIntegrations200Response>, Integer, Hash)> list_orchestration_integrations_with_http_info(accept, content_type, id)

```ruby
begin
  # List Integrations for an Event Orchestration
  data, status_code, headers = api_instance.list_orchestration_integrations_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrchestrationIntegrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->list_orchestration_integrations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |

### Return type

[**ListOrchestrationIntegrations200Response**](ListOrchestrationIntegrations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## migrate_orchestration_integration

> <ListOrchestrationIntegrations200Response> migrate_orchestration_integration(accept, content_type, id, opts)

Migrate an Integration from one Event Orchestration to another

Move an Integration and its Routing Key from the Event Orchestration specified in the request payload, to the Event Orchestration specified in the request URL.  Any future events sent to this Integration's Routing Key will be processed by this Event Orchestration's Rules.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
opts = {
  migrate_orchestration_integration_request: OpenapiClient::MigrateOrchestrationIntegrationRequest.new({source_id: 'source_id_example', source_type: 'orchestration', integration_id: 'integration_id_example'}) # MigrateOrchestrationIntegrationRequest | 
}

begin
  # Migrate an Integration from one Event Orchestration to another
  result = api_instance.migrate_orchestration_integration(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->migrate_orchestration_integration: #{e}"
end
```

#### Using the migrate_orchestration_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListOrchestrationIntegrations200Response>, Integer, Hash)> migrate_orchestration_integration_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Migrate an Integration from one Event Orchestration to another
  data, status_code, headers = api_instance.migrate_orchestration_integration_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListOrchestrationIntegrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->migrate_orchestration_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **migrate_orchestration_integration_request** | [**MigrateOrchestrationIntegrationRequest**](MigrateOrchestrationIntegrationRequest.md) |  | [optional] |

### Return type

[**ListOrchestrationIntegrations200Response**](ListOrchestrationIntegrations200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_orchestration

> <PostOrchestration201Response> post_orchestration(accept, content_type, opts)

Create an Orchestration

Create a Global Event Orchestration.  Global Event Orchestrations allow you define a set of Global Rules and Router Rules, so that when you ingest events using the Orchestration's Routing Key your events will have actions applied via the Global Rules & then routed to the correct Service by the Router Rules, based on the event's content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  post_orchestration_request: OpenapiClient::PostOrchestrationRequest.new({orchestration: OpenapiClient::Orchestration.new}) # PostOrchestrationRequest | 
}

begin
  # Create an Orchestration
  result = api_instance.post_orchestration(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->post_orchestration: #{e}"
end
```

#### Using the post_orchestration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostOrchestration201Response>, Integer, Hash)> post_orchestration_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create an Orchestration
  data, status_code, headers = api_instance.post_orchestration_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostOrchestration201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->post_orchestration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **post_orchestration_request** | [**PostOrchestrationRequest**](PostOrchestrationRequest.md) |  | [optional] |

### Return type

[**PostOrchestration201Response**](PostOrchestration201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## post_orchestration_integration

> <PostOrchestrationIntegration201Response> post_orchestration_integration(accept, content_type, id, opts)

Create an Integration for an Event Orchestration

Create an Integration associated with this Event Orchestration.  You can then use the Routing Key from this new Integration to send events to PagerDuty!  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
opts = {
  post_orchestration_integration_request: OpenapiClient::PostOrchestrationIntegrationRequest.new({integration: OpenapiClient::PostOrchestrationIntegrationRequestIntegration.new({label: 'label_example'})}) # PostOrchestrationIntegrationRequest | 
}

begin
  # Create an Integration for an Event Orchestration
  result = api_instance.post_orchestration_integration(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->post_orchestration_integration: #{e}"
end
```

#### Using the post_orchestration_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostOrchestrationIntegration201Response>, Integer, Hash)> post_orchestration_integration_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Create an Integration for an Event Orchestration
  data, status_code, headers = api_instance.post_orchestration_integration_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostOrchestrationIntegration201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->post_orchestration_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **post_orchestration_integration_request** | [**PostOrchestrationIntegrationRequest**](PostOrchestrationIntegrationRequest.md) |  | [optional] |

### Return type

[**PostOrchestrationIntegration201Response**](PostOrchestrationIntegration201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cache_var_on_global_orch

> <CreateCacheVarOnGlobalOrch200Response> update_cache_var_on_global_orch(accept, content_type, id, cache_variable_id, opts)

Update a Cache Variable for a Global Event Orchestration

Update a Cache Variable for a Global Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
cache_variable_id = 'cache_variable_id_example' # String | The ID of a Cache Variable.
opts = {
  create_cache_var_on_global_orch_request: OpenapiClient::CreateCacheVarOnGlobalOrchRequest.new({cache_variable: OpenapiClient::OrchestrationCacheVariable.new({name: 'name_example', configuration: OpenapiClient::OrchestrationCacheVariableConfigurationOneOf.new({type: 'recent_value', source: 'event.summary', regex: 'regex_example'})})}) # CreateCacheVarOnGlobalOrchRequest | 
}

begin
  # Update a Cache Variable for a Global Event Orchestration
  result = api_instance.update_cache_var_on_global_orch(accept, content_type, id, cache_variable_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_cache_var_on_global_orch: #{e}"
end
```

#### Using the update_cache_var_on_global_orch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCacheVarOnGlobalOrch200Response>, Integer, Hash)> update_cache_var_on_global_orch_with_http_info(accept, content_type, id, cache_variable_id, opts)

```ruby
begin
  # Update a Cache Variable for a Global Event Orchestration
  data, status_code, headers = api_instance.update_cache_var_on_global_orch_with_http_info(accept, content_type, id, cache_variable_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCacheVarOnGlobalOrch200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_cache_var_on_global_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **cache_variable_id** | **String** | The ID of a Cache Variable. |  |
| **create_cache_var_on_global_orch_request** | [**CreateCacheVarOnGlobalOrchRequest**](CreateCacheVarOnGlobalOrchRequest.md) |  | [optional] |

### Return type

[**CreateCacheVarOnGlobalOrch200Response**](CreateCacheVarOnGlobalOrch200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_cache_var_on_service_orch

> <CreateCacheVarOnGlobalOrch200Response> update_cache_var_on_service_orch(accept, content_type, service_id, cache_variable_id, opts)

Update a Cache Variable for a Service Event Orchestration

Update a Cache Variable for a Service Event Orchestration.  Cache Variables allow you to store event data on an Event Orchestration, which can then be used in Event Orchestration rules as part of conditions or actions.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID
cache_variable_id = 'cache_variable_id_example' # String | The ID of a Cache Variable.
opts = {
  create_cache_var_on_global_orch_request: OpenapiClient::CreateCacheVarOnGlobalOrchRequest.new({cache_variable: OpenapiClient::OrchestrationCacheVariable.new({name: 'name_example', configuration: OpenapiClient::OrchestrationCacheVariableConfigurationOneOf.new({type: 'recent_value', source: 'event.summary', regex: 'regex_example'})})}) # CreateCacheVarOnGlobalOrchRequest | 
}

begin
  # Update a Cache Variable for a Service Event Orchestration
  result = api_instance.update_cache_var_on_service_orch(accept, content_type, service_id, cache_variable_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_cache_var_on_service_orch: #{e}"
end
```

#### Using the update_cache_var_on_service_orch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateCacheVarOnGlobalOrch200Response>, Integer, Hash)> update_cache_var_on_service_orch_with_http_info(accept, content_type, service_id, cache_variable_id, opts)

```ruby
begin
  # Update a Cache Variable for a Service Event Orchestration
  data, status_code, headers = api_instance.update_cache_var_on_service_orch_with_http_info(accept, content_type, service_id, cache_variable_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateCacheVarOnGlobalOrch200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_cache_var_on_service_orch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |
| **cache_variable_id** | **String** | The ID of a Cache Variable. |  |
| **create_cache_var_on_global_orch_request** | [**CreateCacheVarOnGlobalOrchRequest**](CreateCacheVarOnGlobalOrchRequest.md) |  | [optional] |

### Return type

[**CreateCacheVarOnGlobalOrch200Response**](CreateCacheVarOnGlobalOrch200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_orch_active_status

> <GetOrchActiveStatus200Response> update_orch_active_status(accept, content_type, service_id, opts)

Update the Service Orchestration active status for a Service

Update a Service Orchestration's active status.  A Service Orchestration allows you to set an active status based on whether an event will be evaluated against a service orchestration path (true) or service ruleset (false).  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID
opts = {
  body: {"active":false} # Schema | Update Service Orchestration's active status.
}

begin
  # Update the Service Orchestration active status for a Service
  result = api_instance.update_orch_active_status(accept, content_type, service_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_active_status: #{e}"
end
```

#### Using the update_orch_active_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOrchActiveStatus200Response>, Integer, Hash)> update_orch_active_status_with_http_info(accept, content_type, service_id, opts)

```ruby
begin
  # Update the Service Orchestration active status for a Service
  data, status_code, headers = api_instance.update_orch_active_status_with_http_info(accept, content_type, service_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOrchActiveStatus200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_active_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |
| **body** | **Schema** | Update Service Orchestration&#39;s active status. | [optional] |

### Return type

[**GetOrchActiveStatus200Response**](GetOrchActiveStatus200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_orch_path_global

> <UpdateOrchPathGlobal200Response> update_orch_path_global(accept, content_type, id, opts)

Update the Global Orchestration for an Event Orchestration

Update the Global Orchestration for an Event Orchestration.  Global Orchestration Rules allows you to create a set of Event Rules. These rules evaluate against all Events sent to an Event Orchestration. When a matching rule is found, it can modify and enhance the event and can route the event to another set of Global Rules within this Orchestration for further processing.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
opts = {
  orchestration_global: OpenapiClient::OrchestrationGlobal.new({orchestration_path: OpenapiClient::OrchestrationGlobalAllOfOrchestrationPath1.new}) # OrchestrationGlobal | Update Global Orchestration rules. Omitted rules and rule details are deleted.
}

begin
  # Update the Global Orchestration for an Event Orchestration
  result = api_instance.update_orch_path_global(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_path_global: #{e}"
end
```

#### Using the update_orch_path_global_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrchPathGlobal200Response>, Integer, Hash)> update_orch_path_global_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update the Global Orchestration for an Event Orchestration
  data, status_code, headers = api_instance.update_orch_path_global_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrchPathGlobal200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_path_global_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **orchestration_global** | [**OrchestrationGlobal**](OrchestrationGlobal.md) | Update Global Orchestration rules. Omitted rules and rule details are deleted. | [optional] |

### Return type

[**UpdateOrchPathGlobal200Response**](UpdateOrchPathGlobal200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_orch_path_router

> <UpdateOrchPathRouter200Response> update_orch_path_router(accept, content_type, id, opts)

Update the Router for an Event Orchestration

Update a Global Orchestration's Routing Rules.  An Orchestration Router allows you to create a set of Event Rules. The Router evaluates Events you send to this Global Orchestration against each of its rules, one at a time, and routes the event to a specific Service based on the first rule that matches. If an event doesn't match any rules, it'll be sent to service specified in as the `catch_all` or the \"Unrouted\" Orchestration if no service is specified.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
opts = {
  orchestration_router: OpenapiClient::OrchestrationRouter.new # OrchestrationRouter | Updates to Orchestration Router details. Omitted rules and rule details are deleted.
}

begin
  # Update the Router for an Event Orchestration
  result = api_instance.update_orch_path_router(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_path_router: #{e}"
end
```

#### Using the update_orch_path_router_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrchPathRouter200Response>, Integer, Hash)> update_orch_path_router_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update the Router for an Event Orchestration
  data, status_code, headers = api_instance.update_orch_path_router_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrchPathRouter200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_path_router_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **orchestration_router** | [**OrchestrationRouter**](OrchestrationRouter.md) | Updates to Orchestration Router details. Omitted rules and rule details are deleted. | [optional] |

### Return type

[**UpdateOrchPathRouter200Response**](UpdateOrchPathRouter200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_orch_path_service

> <UpdateOrchPathService200Response> update_orch_path_service(accept, content_type, service_id, opts)

Update the Service Orchestration for a Service

Update a Service Orchestration.  A Service Orchestration allows you to create a set of Event Rules. The Service Orchestration evaluates Events sent to this Service against each of its rules, beginning with the rules in the \"start\" set. When a matching rule is found, it can modify and enhance the event and can route the event to another set of rules within this Service Orchestration for further processing.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
service_id = 'service_id_example' # String | The service ID
opts = {
  service_orchestration: OpenapiClient::ServiceOrchestration.new # ServiceOrchestration | Update Service Orchestration rules. Omitted rules and rule details are deleted.
}

begin
  # Update the Service Orchestration for a Service
  result = api_instance.update_orch_path_service(accept, content_type, service_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_path_service: #{e}"
end
```

#### Using the update_orch_path_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrchPathService200Response>, Integer, Hash)> update_orch_path_service_with_http_info(accept, content_type, service_id, opts)

```ruby
begin
  # Update the Service Orchestration for a Service
  data, status_code, headers = api_instance.update_orch_path_service_with_http_info(accept, content_type, service_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrchPathService200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_path_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **service_id** | **String** | The service ID |  |
| **service_orchestration** | [**ServiceOrchestration**](ServiceOrchestration.md) | Update Service Orchestration rules. Omitted rules and rule details are deleted. | [optional] |

### Return type

[**UpdateOrchPathService200Response**](UpdateOrchPathService200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_orch_path_unrouted

> <UpdateOrchPathUnrouted200Response> update_orch_path_unrouted(accept, content_type, id, opts)

Update the Unrouted Orchestration for an Event Orchestration

Update a Global Event Orchestration's Rules for Unrouted events.  An Unrouted Orchestration allows you to create a set of Event Rules that will be evaluated against all events that don't match any rules in the Global Orchestration's Router. Events that reach the Unrouted Orchestration will never be routed to a specific Service.  The Unrouted Orchestration evaluates Events sent to it against each of its rules, beginning with the rules in the \"start\" set. When a matching rule is found, it can modify and enhance the event and can route the event to another set of rules within this Unrouted Orchestration for further processing.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
opts = {
  orchestration_unrouted: OpenapiClient::OrchestrationUnrouted.new # OrchestrationUnrouted | Updates to Unrouted Orchestration rules. Omitted rules and rule details are deleted.
}

begin
  # Update the Unrouted Orchestration for an Event Orchestration
  result = api_instance.update_orch_path_unrouted(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_path_unrouted: #{e}"
end
```

#### Using the update_orch_path_unrouted_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateOrchPathUnrouted200Response>, Integer, Hash)> update_orch_path_unrouted_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update the Unrouted Orchestration for an Event Orchestration
  data, status_code, headers = api_instance.update_orch_path_unrouted_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateOrchPathUnrouted200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orch_path_unrouted_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **orchestration_unrouted** | [**OrchestrationUnrouted**](OrchestrationUnrouted.md) | Updates to Unrouted Orchestration rules. Omitted rules and rule details are deleted. | [optional] |

### Return type

[**UpdateOrchPathUnrouted200Response**](UpdateOrchPathUnrouted200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_orchestration

> <PostOrchestration201Response> update_orchestration(accept, content_type, id, opts)

Update an Orchestration

Update a Global Event Orchestration.  Global Event Orchestrations allow you define a set of Global Rules and Router Rules, so that when you ingest events using the Orchestration's Routing Key your events will have actions applied via the Global Rules & then routed to the correct Service by the Router Rules, based on the event's content.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
opts = {
  post_orchestration_request: OpenapiClient::PostOrchestrationRequest.new({orchestration: OpenapiClient::Orchestration.new}) # PostOrchestrationRequest | 
}

begin
  # Update an Orchestration
  result = api_instance.update_orchestration(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orchestration: #{e}"
end
```

#### Using the update_orchestration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostOrchestration201Response>, Integer, Hash)> update_orchestration_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update an Orchestration
  data, status_code, headers = api_instance.update_orchestration_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostOrchestration201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orchestration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **post_orchestration_request** | [**PostOrchestrationRequest**](PostOrchestrationRequest.md) |  | [optional] |

### Return type

[**PostOrchestration201Response**](PostOrchestration201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_orchestration_integration

> <PostOrchestrationIntegration201Response> update_orchestration_integration(accept, content_type, id, integration_id, opts)

Update an Integration for an Event Orchestration

Update an Integration associated with this Event Orchestrations.  You can use the Routing Key from this Integration to send events to PagerDuty!  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#event-orchestrations)  Scoped OAuth requires: `event_orchestrations.write` 

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

api_instance = OpenapiClient::EventOrchestrationsApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of an Event Orchestration.
integration_id = 'integration_id_example' # String | The ID of an Integration.
opts = {
  post_orchestration_integration_request: OpenapiClient::PostOrchestrationIntegrationRequest.new({integration: OpenapiClient::PostOrchestrationIntegrationRequestIntegration.new({label: 'label_example'})}) # PostOrchestrationIntegrationRequest | 
}

begin
  # Update an Integration for an Event Orchestration
  result = api_instance.update_orchestration_integration(accept, content_type, id, integration_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orchestration_integration: #{e}"
end
```

#### Using the update_orchestration_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostOrchestrationIntegration201Response>, Integer, Hash)> update_orchestration_integration_with_http_info(accept, content_type, id, integration_id, opts)

```ruby
begin
  # Update an Integration for an Event Orchestration
  data, status_code, headers = api_instance.update_orchestration_integration_with_http_info(accept, content_type, id, integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostOrchestrationIntegration201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling EventOrchestrationsApi->update_orchestration_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of an Event Orchestration. |  |
| **integration_id** | **String** | The ID of an Integration. |  |
| **post_orchestration_integration_request** | [**PostOrchestrationIntegrationRequest**](PostOrchestrationIntegrationRequest.md) |  | [optional] |

### Return type

[**PostOrchestrationIntegration201Response**](PostOrchestrationIntegration201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

