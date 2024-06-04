# OpenapiClient::ServicesApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**convert_service_event_rules_to_event_orchestration**](ServicesApi.md#convert_service_event_rules_to_event_orchestration) | **POST** /services/{id}/rules/convert | Convert a Service&#39;s Event Rules into Event Orchestration Rules |
| [**create_service**](ServicesApi.md#create_service) | **POST** /services | Create a service |
| [**create_service_event_rule**](ServicesApi.md#create_service_event_rule) | **POST** /services/{id}/rules | Create an Event Rule on a Service |
| [**create_service_integration**](ServicesApi.md#create_service_integration) | **POST** /services/{id}/integrations | Create a new integration |
| [**delete_service**](ServicesApi.md#delete_service) | **DELETE** /services/{id} | Delete a service |
| [**delete_service_event_rule**](ServicesApi.md#delete_service_event_rule) | **DELETE** /services/{id}/rules/{rule_id} | Delete an Event Rule from a Service |
| [**get_service**](ServicesApi.md#get_service) | **GET** /services/{id} | Get a service |
| [**get_service_event_rule**](ServicesApi.md#get_service_event_rule) | **GET** /services/{id}/rules/{rule_id} | Get an Event Rule from a Service |
| [**get_service_integration**](ServicesApi.md#get_service_integration) | **GET** /services/{id}/integrations/{integration_id} | View an integration |
| [**list_service_audit_records**](ServicesApi.md#list_service_audit_records) | **GET** /services/{id}/audit/records | List audit records for a service |
| [**list_service_event_rules**](ServicesApi.md#list_service_event_rules) | **GET** /services/{id}/rules | List Service&#39;s Event Rules |
| [**list_services**](ServicesApi.md#list_services) | **GET** /services | List services |
| [**update_service**](ServicesApi.md#update_service) | **PUT** /services/{id} | Update a service |
| [**update_service_event_rule**](ServicesApi.md#update_service_event_rule) | **PUT** /services/{id}/rules/{rule_id} | Update an Event Rule on a Service |
| [**update_service_integration**](ServicesApi.md#update_service_integration) | **PUT** /services/{id}/integrations/{integration_id} | Update an existing integration |


## convert_service_event_rules_to_event_orchestration

> <ConvertServiceEventRulesToEventOrchestration200Response> convert_service_event_rules_to_event_orchestration(accept, content_type, id)

Convert a Service's Event Rules into Event Orchestration Rules

Convert this Service's Event Rules into functionally equivalent Event Orchestration Rules.  Sending a request to this API endpoint has several effects:  1. Automatically creates Event Orchestration Rules for this Service that will behave identically as this Service's currently configured Event Rules. 2. Makes all existing Event Rules for this Service read-only. All future updates need to be made via the newly created Event Orchestration rules.  Sending a request to this API endpoint will **not** change how future events will be processed. If past events for this Service have been evaluated via Event Rules then new events sent to this Service will also continue to be evaluated via the (now read-only) Event Rules. To change this Service so that new events start being evaluated via the newly created Event Orchestration Rules use the [Update the Service Orchestration active status for a Service API](https://developer.pagerduty.com/api-reference/855659be83d9e-update-the-service-orchestration-active-status-for-a-service).  > ### End-of-life > Event Rules will end-of-life soon. We highly recommend that you use this API to [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Convert a Service's Event Rules into Event Orchestration Rules
  result = api_instance.convert_service_event_rules_to_event_orchestration(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->convert_service_event_rules_to_event_orchestration: #{e}"
end
```

#### Using the convert_service_event_rules_to_event_orchestration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConvertServiceEventRulesToEventOrchestration200Response>, Integer, Hash)> convert_service_event_rules_to_event_orchestration_with_http_info(accept, content_type, id)

```ruby
begin
  # Convert a Service's Event Rules into Event Orchestration Rules
  data, status_code, headers = api_instance.convert_service_event_rules_to_event_orchestration_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConvertServiceEventRulesToEventOrchestration200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->convert_service_event_rules_to_event_orchestration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**ConvertServiceEventRulesToEventOrchestration200Response**](ConvertServiceEventRulesToEventOrchestration200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## create_service

> <CreateServiceRequest> create_service(accept, content_type, opts)

Create a service

Create a new service.  If `status` is included in the request, it must have a value of `active` when creating a new service. If a different status is required, make a second request to update the service.  A service may represent an application, component, or team you wish to open incidents against.  There is a limit of 25,000 services per account. If the limit is reached, the API will respond with an error. There is also a limit of 100,000 open Incidents per Service. If the limit is reached and `auto_resolve_timeout` is disabled (set to 0 or null), the `auto_resolve_timeout` property will automatically be set to  84600 (1 day).  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  create_service_request: OpenapiClient::CreateServiceRequest.new({service: OpenapiClient::Service.new({type: 'service', escalation_policy: OpenapiClient::EscalationPolicyReference.new({type: 'escalation_policy_reference'})})}) # CreateServiceRequest | The service to be created
}

begin
  # Create a service
  result = api_instance.create_service(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->create_service: #{e}"
end
```

#### Using the create_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceRequest>, Integer, Hash)> create_service_with_http_info(accept, content_type, opts)

```ruby
begin
  # Create a service
  data, status_code, headers = api_instance.create_service_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->create_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **create_service_request** | [**CreateServiceRequest**](CreateServiceRequest.md) | The service to be created | [optional] |

### Return type

[**CreateServiceRequest**](CreateServiceRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_service_event_rule

> <CreateServiceEventRule201Response> create_service_event_rule(accept, content_type, id, opts)

Create an Event Rule on a Service

Create a new Event Rule on a Service. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_service_event_rule_request: OpenapiClient::CreateServiceEventRuleRequest.new({rule: OpenapiClient::ServiceEventRule.new}) # CreateServiceEventRuleRequest | 
}

begin
  # Create an Event Rule on a Service
  result = api_instance.create_service_event_rule(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->create_service_event_rule: #{e}"
end
```

#### Using the create_service_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceEventRule201Response>, Integer, Hash)> create_service_event_rule_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Create an Event Rule on a Service
  data, status_code, headers = api_instance.create_service_event_rule_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceEventRule201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->create_service_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_service_event_rule_request** | [**CreateServiceEventRuleRequest**](CreateServiceEventRuleRequest.md) |  | [optional] |

### Return type

[**CreateServiceEventRule201Response**](CreateServiceEventRule201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_service_integration

> <CreateServiceIntegrationRequest> create_service_integration(accept, content_type, id, opts)

Create a new integration

Create a new integration belonging to a Service.  A service may represent an application, component, or team you wish to open incidents against.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_service_integration_request: OpenapiClient::CreateServiceIntegrationRequest.new({integration: OpenapiClient::Integration.new}) # CreateServiceIntegrationRequest | The integration to be created
}

begin
  # Create a new integration
  result = api_instance.create_service_integration(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->create_service_integration: #{e}"
end
```

#### Using the create_service_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceIntegrationRequest>, Integer, Hash)> create_service_integration_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Create a new integration
  data, status_code, headers = api_instance.create_service_integration_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceIntegrationRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->create_service_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_service_integration_request** | [**CreateServiceIntegrationRequest**](CreateServiceIntegrationRequest.md) | The integration to be created | [optional] |

### Return type

[**CreateServiceIntegrationRequest**](CreateServiceIntegrationRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_service

> delete_service(accept, content_type, id)

Delete a service

Delete an existing service.  Once the service is deleted, it will not be accessible from the web UI and new incidents won't be able to be created for this service.  A service may represent an application, component, or team you wish to open incidents against.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a service
  api_instance.delete_service(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->delete_service: #{e}"
end
```

#### Using the delete_service_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_service_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete a service
  data, status_code, headers = api_instance.delete_service_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->delete_service_with_http_info: #{e}"
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


## delete_service_event_rule

> delete_service_event_rule(accept, content_type, id, rule_id)

Delete an Event Rule from a Service

Delete an Event Rule from a Service. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
rule_id = 'rule_id_example' # String | The id of the Event Rule to retrieve.

begin
  # Delete an Event Rule from a Service
  api_instance.delete_service_event_rule(accept, content_type, id, rule_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->delete_service_event_rule: #{e}"
end
```

#### Using the delete_service_event_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_service_event_rule_with_http_info(accept, content_type, id, rule_id)

```ruby
begin
  # Delete an Event Rule from a Service
  data, status_code, headers = api_instance.delete_service_event_rule_with_http_info(accept, content_type, id, rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->delete_service_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **rule_id** | **String** | The id of the Event Rule to retrieve. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service

> <CreateServiceRequest> get_service(accept, content_type, id, opts)

Get a service

Get details about an existing service.  A service may represent an application, component, or team you wish to open incidents against.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  include: 'escalation_policies' # String | Array of additional details to include.
}

begin
  # Get a service
  result = api_instance.get_service(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->get_service: #{e}"
end
```

#### Using the get_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceRequest>, Integer, Hash)> get_service_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get a service
  data, status_code, headers = api_instance.get_service_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->get_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**CreateServiceRequest**](CreateServiceRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_event_rule

> <CreateServiceEventRule201Response> get_service_event_rule(accept, content_type, id, rule_id)

Get an Event Rule from a Service

Get an Event Rule from a Service. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
rule_id = 'rule_id_example' # String | The id of the Event Rule to retrieve.

begin
  # Get an Event Rule from a Service
  result = api_instance.get_service_event_rule(accept, content_type, id, rule_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->get_service_event_rule: #{e}"
end
```

#### Using the get_service_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceEventRule201Response>, Integer, Hash)> get_service_event_rule_with_http_info(accept, content_type, id, rule_id)

```ruby
begin
  # Get an Event Rule from a Service
  data, status_code, headers = api_instance.get_service_event_rule_with_http_info(accept, content_type, id, rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceEventRule201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->get_service_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **rule_id** | **String** | The id of the Event Rule to retrieve. |  |

### Return type

[**CreateServiceEventRule201Response**](CreateServiceEventRule201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_service_integration

> <CreateServiceIntegrationRequest> get_service_integration(accept, content_type, id, integration_id, opts)

View an integration

Get details about an integration belonging to a service.  A service may represent an application, component, or team you wish to open incidents against.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
integration_id = 'integration_id_example' # String | The integration ID on the service.
opts = {
  include: 'services' # String | Array of additional details to include.
}

begin
  # View an integration
  result = api_instance.get_service_integration(accept, content_type, id, integration_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->get_service_integration: #{e}"
end
```

#### Using the get_service_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceIntegrationRequest>, Integer, Hash)> get_service_integration_with_http_info(accept, content_type, id, integration_id, opts)

```ruby
begin
  # View an integration
  data, status_code, headers = api_instance.get_service_integration_with_http_info(accept, content_type, id, integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceIntegrationRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->get_service_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **integration_id** | **String** | The integration ID on the service. |  |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**CreateServiceIntegrationRequest**](CreateServiceIntegrationRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_service_audit_records

> <AuditRecordResponseSchema> list_service_audit_records(accept, content_type, id, opts)

List audit records for a service

The returned records are sorted by the `execution_time` from newest to oldest.  See [`Cursor-based pagination`](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: `audit_records.read` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The minimum of the `limit` parameter used in the request or the maximum request size of the API.
  cursor: 'cursor_example', # String | Optional parameter used to request the \"next\" set of results from an API.  The value provided here is most commonly obtained from the `next_cursor` field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  since: Time.parse('2013-10-20T19:20:30+01:00'), # Time | The start of the date range over which you want to search. If not specified, defaults to `now() - 24 hours` (past 24 hours)
  _until: Time.parse('2013-10-20T19:20:30+01:00') # Time | The end of the date range over which you want to search. If not specified, defaults to `now()`. May not be more than 31 days after `since`.
}

begin
  # List audit records for a service
  result = api_instance.list_service_audit_records(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->list_service_audit_records: #{e}"
end
```

#### Using the list_service_audit_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditRecordResponseSchema>, Integer, Hash)> list_service_audit_records_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List audit records for a service
  data, status_code, headers = api_instance.list_service_audit_records_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditRecordResponseSchema>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->list_service_audit_records_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API. | [optional] |
| **cursor** | **String** | Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set.  | [optional] |
| **since** | **Time** | The start of the date range over which you want to search. If not specified, defaults to &#x60;now() - 24 hours&#x60; (past 24 hours) | [optional] |
| **_until** | **Time** | The end of the date range over which you want to search. If not specified, defaults to &#x60;now()&#x60;. May not be more than 31 days after &#x60;since&#x60;. | [optional] |

### Return type

[**AuditRecordResponseSchema**](AuditRecordResponseSchema.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_service_event_rules

> <ListServiceEventRules200Response> list_service_event_rules(accept, content_type, id, opts)

List Service's Event Rules

List Event Rules on a Service. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  include: 'migrated_metadata' # String | Array of additional Models to include in response.
}

begin
  # List Service's Event Rules
  result = api_instance.list_service_event_rules(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->list_service_event_rules: #{e}"
end
```

#### Using the list_service_event_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListServiceEventRules200Response>, Integer, Hash)> list_service_event_rules_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List Service's Event Rules
  data, status_code, headers = api_instance.list_service_event_rules_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListServiceEventRules200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->list_service_event_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**ListServiceEventRules200Response**](ListServiceEventRules200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_services

> <ListServices200Response> list_services(accept, content_type, opts)

List services

List existing Services.  A service may represent an application, component, or team you wish to open incidents against.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.read` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  query: 'query_example', # String | Filters the result, showing only the records whose name matches the query.
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  team_ids: ['inner_example'], # Array<String> | An array of team IDs. Only results related to these teams will be returned. Account must have the `teams` ability to use this parameter.
  time_zone: 'time_zone_example', # String | Time zone in which results will be rendered. This will default to the account time zone.
  sort_by: 'name', # String | Used to specify the field you wish to sort the results on.
  include: 'escalation_policies', # String | Array of additional details to include.
  name: 'name_example' # String | Filters the results, showing only services with the specified name.
}

begin
  # List services
  result = api_instance.list_services(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->list_services: #{e}"
end
```

#### Using the list_services_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListServices200Response>, Integer, Hash)> list_services_with_http_info(accept, content_type, opts)

```ruby
begin
  # List services
  data, status_code, headers = api_instance.list_services_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListServices200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->list_services_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **query** | **String** | Filters the result, showing only the records whose name matches the query. | [optional] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **team_ids** | [**Array&lt;String&gt;**](String.md) | An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter. | [optional] |
| **time_zone** | **String** | Time zone in which results will be rendered. This will default to the account time zone. | [optional] |
| **sort_by** | **String** | Used to specify the field you wish to sort the results on. | [optional][default to &#39;name&#39;] |
| **include** | **String** | Array of additional details to include. | [optional] |
| **name** | **String** | Filters the results, showing only services with the specified name. | [optional] |

### Return type

[**ListServices200Response**](ListServices200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_service

> <CreateServiceRequest> update_service(accept, content_type, id, opts)

Update a service

Update an existing service.  A service may represent an application, component, or team you wish to open incidents against.  There is a limit of 100,000 open Incidents per Service. If the limit is reached and you disable `auto_resolve_timeout` (set to 0 or null), the API will respond with an error.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_service_request: OpenapiClient::CreateServiceRequest.new({service: OpenapiClient::Service.new({type: 'service', escalation_policy: OpenapiClient::EscalationPolicyReference.new({type: 'escalation_policy_reference'})})}) # CreateServiceRequest | The service to be updated.
}

begin
  # Update a service
  result = api_instance.update_service(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->update_service: #{e}"
end
```

#### Using the update_service_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceRequest>, Integer, Hash)> update_service_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a service
  data, status_code, headers = api_instance.update_service_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->update_service_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_service_request** | [**CreateServiceRequest**](CreateServiceRequest.md) | The service to be updated. | [optional] |

### Return type

[**CreateServiceRequest**](CreateServiceRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_service_event_rule

> <CreateServiceEventRule201Response> update_service_event_rule(accept, content_type, id, rule_id, opts)

Update an Event Rule on a Service

Update an Event Rule on a Service. Note that the endpoint supports partial updates, so any number of the writable fields can be provided. <!-- theme: warning --> > ### End-of-life > Rulesets and Event Rules will end-of-life soon. We highly recommend that you [migrate to Event Orchestration](https://support.pagerduty.com/docs/migrate-to-event-orchestration) as soon as possible so you can take advantage of the new functionality, such as improved UI, rule creation, APIs and Terraform support, advanced conditions, and rule nesting.  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
rule_id = 'rule_id_example' # String | The id of the Event Rule to retrieve.
opts = {
  update_service_event_rule_request: OpenapiClient::UpdateServiceEventRuleRequest.new({rule_id: 'rule_id_example'}) # UpdateServiceEventRuleRequest | 
}

begin
  # Update an Event Rule on a Service
  result = api_instance.update_service_event_rule(accept, content_type, id, rule_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->update_service_event_rule: #{e}"
end
```

#### Using the update_service_event_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceEventRule201Response>, Integer, Hash)> update_service_event_rule_with_http_info(accept, content_type, id, rule_id, opts)

```ruby
begin
  # Update an Event Rule on a Service
  data, status_code, headers = api_instance.update_service_event_rule_with_http_info(accept, content_type, id, rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceEventRule201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->update_service_event_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **rule_id** | **String** | The id of the Event Rule to retrieve. |  |
| **update_service_event_rule_request** | [**UpdateServiceEventRuleRequest**](UpdateServiceEventRuleRequest.md) |  | [optional] |

### Return type

[**CreateServiceEventRule201Response**](CreateServiceEventRule201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_service_integration

> <CreateServiceIntegrationRequest> update_service_integration(accept, content_type, id, integration_id, opts)

Update an existing integration

Update an integration belonging to a Service.  A service may represent an application, component, or team you wish to open incidents against.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#services)  Scoped OAuth requires: `services.write` 

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

api_instance = OpenapiClient::ServicesApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
integration_id = 'integration_id_example' # String | The integration ID on the service.
opts = {
  create_service_integration_request: OpenapiClient::CreateServiceIntegrationRequest.new({integration: OpenapiClient::Integration.new}) # CreateServiceIntegrationRequest | The integration to be updated
}

begin
  # Update an existing integration
  result = api_instance.update_service_integration(accept, content_type, id, integration_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->update_service_integration: #{e}"
end
```

#### Using the update_service_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateServiceIntegrationRequest>, Integer, Hash)> update_service_integration_with_http_info(accept, content_type, id, integration_id, opts)

```ruby
begin
  # Update an existing integration
  data, status_code, headers = api_instance.update_service_integration_with_http_info(accept, content_type, id, integration_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateServiceIntegrationRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ServicesApi->update_service_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **integration_id** | **String** | The integration ID on the service. |  |
| **create_service_integration_request** | [**CreateServiceIntegrationRequest**](CreateServiceIntegrationRequest.md) | The integration to be updated | [optional] |

### Return type

[**CreateServiceIntegrationRequest**](CreateServiceIntegrationRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

