# OpenapiClient::UsersApi

All URIs are relative to *https://api.pagerduty.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user**](UsersApi.md#create_user) | **POST** /users | Create a user |
| [**create_user_contact_method**](UsersApi.md#create_user_contact_method) | **POST** /users/{id}/contact_methods | Create a user contact method |
| [**create_user_handoff_notification_rule**](UsersApi.md#create_user_handoff_notification_rule) | **POST** /users/{id}/oncall_handoff_notification_rules | Create a User Handoff Notification Rule |
| [**create_user_notification_rule**](UsersApi.md#create_user_notification_rule) | **POST** /users/{id}/notification_rules | Create a user notification rule |
| [**create_user_notification_subscriptions**](UsersApi.md#create_user_notification_subscriptions) | **POST** /users/{id}/notification_subscriptions | Create Notification Subcriptions |
| [**create_user_status_update_notification_rule**](UsersApi.md#create_user_status_update_notification_rule) | **POST** /users/{id}/status_update_notification_rules | Create a user status update notification rule |
| [**delete_user**](UsersApi.md#delete_user) | **DELETE** /users/{id} | Delete a user |
| [**delete_user_contact_method**](UsersApi.md#delete_user_contact_method) | **DELETE** /users/{id}/contact_methods/{contact_method_id} | Delete a user&#39;s contact method |
| [**delete_user_handoff_notification_rule**](UsersApi.md#delete_user_handoff_notification_rule) | **DELETE** /users/{id}/oncall_handoff_notification_rules/{oncall_handoff_notification_rule_id} | Delete a User&#39;s Handoff Notification rule |
| [**delete_user_notification_rule**](UsersApi.md#delete_user_notification_rule) | **DELETE** /users/{id}/notification_rules/{notification_rule_id} | Delete a user&#39;s notification rule |
| [**delete_user_session**](UsersApi.md#delete_user_session) | **DELETE** /users/{id}/sessions/{type}/{session_id} | Delete a user&#39;s session |
| [**delete_user_sessions**](UsersApi.md#delete_user_sessions) | **DELETE** /users/{id}/sessions | Delete all user sessions |
| [**delete_user_status_update_notification_rule**](UsersApi.md#delete_user_status_update_notification_rule) | **DELETE** /users/{id}/status_update_notification_rules/{status_update_notification_rule_id} | Delete a user&#39;s status update notification rule |
| [**get_current_user**](UsersApi.md#get_current_user) | **GET** /users/me | Get the current user |
| [**get_user**](UsersApi.md#get_user) | **GET** /users/{id} | Get a user |
| [**get_user_contact_method**](UsersApi.md#get_user_contact_method) | **GET** /users/{id}/contact_methods/{contact_method_id} | Get a user&#39;s contact method |
| [**get_user_contact_methods**](UsersApi.md#get_user_contact_methods) | **GET** /users/{id}/contact_methods | List a user&#39;s contact methods |
| [**get_user_handoff_notifiaction_rule**](UsersApi.md#get_user_handoff_notifiaction_rule) | **GET** /users/{id}/oncall_handoff_notification_rules/{oncall_handoff_notification_rule_id} | Get a user&#39;s handoff notification rule |
| [**get_user_handoff_notification_rules**](UsersApi.md#get_user_handoff_notification_rules) | **GET** /users/{id}/oncall_handoff_notification_rules | List a User&#39;s Handoff Notification Rules |
| [**get_user_license**](UsersApi.md#get_user_license) | **GET** /users/{id}/license | Get the License allocated to a User |
| [**get_user_notification_rule**](UsersApi.md#get_user_notification_rule) | **GET** /users/{id}/notification_rules/{notification_rule_id} | Get a user&#39;s notification rule |
| [**get_user_notification_rules**](UsersApi.md#get_user_notification_rules) | **GET** /users/{id}/notification_rules | List a user&#39;s notification rules |
| [**get_user_notification_subscriptions**](UsersApi.md#get_user_notification_subscriptions) | **GET** /users/{id}/notification_subscriptions | List Notification Subscriptions |
| [**get_user_session**](UsersApi.md#get_user_session) | **GET** /users/{id}/sessions/{type}/{session_id} | Get a user&#39;s session |
| [**get_user_sessions**](UsersApi.md#get_user_sessions) | **GET** /users/{id}/sessions | List a user&#39;s active sessions |
| [**get_user_status_update_notification_rule**](UsersApi.md#get_user_status_update_notification_rule) | **GET** /users/{id}/status_update_notification_rules/{status_update_notification_rule_id} | Get a user&#39;s status update notification rule |
| [**get_user_status_update_notification_rules**](UsersApi.md#get_user_status_update_notification_rules) | **GET** /users/{id}/status_update_notification_rules | List a user&#39;s status update notification rules |
| [**list_users**](UsersApi.md#list_users) | **GET** /users | List users |
| [**list_users_audit_records**](UsersApi.md#list_users_audit_records) | **GET** /users/{id}/audit/records | List audit records for a user |
| [**unsubscribe_user_notification_subscriptions**](UsersApi.md#unsubscribe_user_notification_subscriptions) | **POST** /users/{id}/notification_subscriptions/unsubscribe | Remove Notification Subscriptions |
| [**update_user**](UsersApi.md#update_user) | **PUT** /users/{id} | Update a user |
| [**update_user_contact_method**](UsersApi.md#update_user_contact_method) | **PUT** /users/{id}/contact_methods/{contact_method_id} | Update a user&#39;s contact method |
| [**update_user_handoff_notification**](UsersApi.md#update_user_handoff_notification) | **PUT** /users/{id}/oncall_handoff_notification_rules/{oncall_handoff_notification_rule_id} | Update a User&#39;s Handoff Notification Rule |
| [**update_user_notification_rule**](UsersApi.md#update_user_notification_rule) | **PUT** /users/{id}/notification_rules/{notification_rule_id} | Update a user&#39;s notification rule |
| [**update_user_status_update_notification_rule**](UsersApi.md#update_user_status_update_notification_rule) | **PUT** /users/{id}/status_update_notification_rules/{status_update_notification_rule_id} | Update a user&#39;s status update notification rule |


## create_user

> <CreateUser201Response> create_user(accept, content_type, from, opts)

Create a user

Create a new user.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
from = 'from_example' # String | The email address of a valid user associated with the account making the request.
opts = {
  create_user_request: OpenapiClient::CreateUserRequest.new({user: OpenapiClient::CreateUserRequestUser.new({name: 'name_example', type: 'user', email: 'email_example'})}) # CreateUserRequest | The user to be created.
}

begin
  # Create a user
  result = api_instance.create_user(accept, content_type, from, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user: #{e}"
end
```

#### Using the create_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUser201Response>, Integer, Hash)> create_user_with_http_info(accept, content_type, from, opts)

```ruby
begin
  # Create a user
  data, status_code, headers = api_instance.create_user_with_http_info(accept, content_type, from, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUser201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **from** | **String** | The email address of a valid user associated with the account making the request. |  |
| **create_user_request** | [**CreateUserRequest**](CreateUserRequest.md) | The user to be created. | [optional] |

### Return type

[**CreateUser201Response**](CreateUser201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user_contact_method

> <CreateUserContactMethod201Response> create_user_contact_method(accept, content_type, id, opts)

Create a user contact method

Create a new contact method for the User.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_user_contact_method_request: OpenapiClient::CreateUserContactMethodRequest.new({contact_method: OpenapiClient::EmailContactMethod.new({label: 'label_example', address: 'address_example'})}) # CreateUserContactMethodRequest | The contact method to be created.
}

begin
  # Create a user contact method
  result = api_instance.create_user_contact_method(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_contact_method: #{e}"
end
```

#### Using the create_user_contact_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserContactMethod201Response>, Integer, Hash)> create_user_contact_method_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Create a user contact method
  data, status_code, headers = api_instance.create_user_contact_method_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserContactMethod201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_contact_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_user_contact_method_request** | [**CreateUserContactMethodRequest**](CreateUserContactMethodRequest.md) | The contact method to be created. | [optional] |

### Return type

[**CreateUserContactMethod201Response**](CreateUserContactMethod201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user_handoff_notification_rule

> <CreateUserHandoffNotificationRuleRequest> create_user_handoff_notification_rule(accept, content_type, id, opts)

Create a User Handoff Notification Rule

Create a new Handoff Notification Rule. Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account. For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_user_handoff_notification_rule_request: OpenapiClient::CreateUserHandoffNotificationRuleRequest.new({oncall_handoff_notification_rule: OpenapiClient::HandoffNotificationRule.new({id: 'id_example', handoff_type: 'both', contact_method: OpenapiClient::ContactMethodReference.new({type: 'email_contact_method_reference'})})}) # CreateUserHandoffNotificationRuleRequest | The Handoff Notification Rule to be created.
}

begin
  # Create a User Handoff Notification Rule
  result = api_instance.create_user_handoff_notification_rule(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_handoff_notification_rule: #{e}"
end
```

#### Using the create_user_handoff_notification_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserHandoffNotificationRuleRequest>, Integer, Hash)> create_user_handoff_notification_rule_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Create a User Handoff Notification Rule
  data, status_code, headers = api_instance.create_user_handoff_notification_rule_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserHandoffNotificationRuleRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_handoff_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_user_handoff_notification_rule_request** | [**CreateUserHandoffNotificationRuleRequest**](CreateUserHandoffNotificationRuleRequest.md) | The Handoff Notification Rule to be created. | [optional] |

### Return type

[**CreateUserHandoffNotificationRuleRequest**](CreateUserHandoffNotificationRuleRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user_notification_rule

> <CreateUserNotificationRuleRequest> create_user_notification_rule(accept, content_type, id, opts)

Create a user notification rule

Create a new notification rule.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_user_notification_rule_request: OpenapiClient::CreateUserNotificationRuleRequest.new({notification_rule: OpenapiClient::NotificationRule.new({type: 'assignment_notification_rule', start_delay_in_minutes: 37, contact_method: OpenapiClient::ContactMethodReference.new({type: 'email_contact_method_reference'}), urgency: 'high'})}) # CreateUserNotificationRuleRequest | The notification rule to be created.
}

begin
  # Create a user notification rule
  result = api_instance.create_user_notification_rule(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_notification_rule: #{e}"
end
```

#### Using the create_user_notification_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserNotificationRuleRequest>, Integer, Hash)> create_user_notification_rule_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Create a user notification rule
  data, status_code, headers = api_instance.create_user_notification_rule_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserNotificationRuleRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_user_notification_rule_request** | [**CreateUserNotificationRuleRequest**](CreateUserNotificationRuleRequest.md) | The notification rule to be created. | [optional] |

### Return type

[**CreateUserNotificationRuleRequest**](CreateUserNotificationRuleRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user_notification_subscriptions

> <CreateBusinessServiceNotificationSubscribers200Response> create_user_notification_subscriptions(accept, id, opts)

Create Notification Subcriptions

Create new Notification Subscriptions for the given User.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_team_notification_subscriptions_request: OpenapiClient::CreateTeamNotificationSubscriptionsRequest.new({subscribables: [OpenapiClient::NotificationSubscribable.new]}) # CreateTeamNotificationSubscriptionsRequest | The entities to subscribe to.
}

begin
  # Create Notification Subcriptions
  result = api_instance.create_user_notification_subscriptions(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_notification_subscriptions: #{e}"
end
```

#### Using the create_user_notification_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateBusinessServiceNotificationSubscribers200Response>, Integer, Hash)> create_user_notification_subscriptions_with_http_info(accept, id, opts)

```ruby
begin
  # Create Notification Subcriptions
  data, status_code, headers = api_instance.create_user_notification_subscriptions_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateBusinessServiceNotificationSubscribers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_notification_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_team_notification_subscriptions_request** | [**CreateTeamNotificationSubscriptionsRequest**](CreateTeamNotificationSubscriptionsRequest.md) | The entities to subscribe to. | [optional] |

### Return type

[**CreateBusinessServiceNotificationSubscribers200Response**](CreateBusinessServiceNotificationSubscribers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_user_status_update_notification_rule

> <CreateUserStatusUpdateNotificationRule201Response> create_user_status_update_notification_rule(accept, content_type, x_early_access, id, opts)

Create a user status update notification rule

Create a new status update notification rule.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  <!-- theme: warning --> > ### Early Access > This endpoint is in Early Access and may change at any time. You must pass in the X-EARLY-ACCESS header to access it.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
x_early_access = 'status-update-notification-rules' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change! 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_user_status_update_notification_rule_request: OpenapiClient::CreateUserStatusUpdateNotificationRuleRequest.new({status_update_notification_rule: OpenapiClient::StatusUpdateNotificationRule.new({contact_method: OpenapiClient::ContactMethodReference.new({type: 'email_contact_method_reference'})})}) # CreateUserStatusUpdateNotificationRuleRequest | The status update notification rule to be created.
}

begin
  # Create a user status update notification rule
  result = api_instance.create_user_status_update_notification_rule(accept, content_type, x_early_access, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_status_update_notification_rule: #{e}"
end
```

#### Using the create_user_status_update_notification_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserStatusUpdateNotificationRule201Response>, Integer, Hash)> create_user_status_update_notification_rule_with_http_info(accept, content_type, x_early_access, id, opts)

```ruby
begin
  # Create a user status update notification rule
  data, status_code, headers = api_instance.create_user_status_update_notification_rule_with_http_info(accept, content_type, x_early_access, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserStatusUpdateNotificationRule201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->create_user_status_update_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change!  | [default to &#39;status-update-notification-rules&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_user_status_update_notification_rule_request** | [**CreateUserStatusUpdateNotificationRuleRequest**](CreateUserStatusUpdateNotificationRuleRequest.md) | The status update notification rule to be created. | [optional] |

### Return type

[**CreateUserStatusUpdateNotificationRule201Response**](CreateUserStatusUpdateNotificationRule201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user

> delete_user(accept, content_type, id)

Delete a user

Remove an existing user.  Returns 400 if the user has assigned incidents unless your [pricing plan](https://www.pagerduty.com/pricing) has the `offboarding` feature and the account is [configured](https://support.pagerduty.com/docs/offboarding#section-additional-configurations) appropriately.  Note that the incidents reassignment process is asynchronous and has no guarantee to complete before the api call return.  [*Learn more about `offboarding` feature*](https://support.pagerduty.com/docs/offboarding).  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete a user
  api_instance.delete_user(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete a user
  data, status_code, headers = api_instance.delete_user_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
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


## delete_user_contact_method

> delete_user_contact_method(accept, content_type, id, contact_method_id)

Delete a user's contact method

Remove a user's contact method.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
contact_method_id = 'contact_method_id_example' # String | The contact method ID on the user.

begin
  # Delete a user's contact method
  api_instance.delete_user_contact_method(accept, content_type, id, contact_method_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_contact_method: #{e}"
end
```

#### Using the delete_user_contact_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_contact_method_with_http_info(accept, content_type, id, contact_method_id)

```ruby
begin
  # Delete a user's contact method
  data, status_code, headers = api_instance.delete_user_contact_method_with_http_info(accept, content_type, id, contact_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_contact_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **contact_method_id** | **String** | The contact method ID on the user. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_handoff_notification_rule

> delete_user_handoff_notification_rule(accept, content_type, id, oncall_handoff_notification_rule_id)

Delete a User's Handoff Notification rule

Remove a User's Handoff Notification Rule. Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account. For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
oncall_handoff_notification_rule_id = 'oncall_handoff_notification_rule_id_example' # String | The oncall handoff notification rule ID on the user.

begin
  # Delete a User's Handoff Notification rule
  api_instance.delete_user_handoff_notification_rule(accept, content_type, id, oncall_handoff_notification_rule_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_handoff_notification_rule: #{e}"
end
```

#### Using the delete_user_handoff_notification_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_handoff_notification_rule_with_http_info(accept, content_type, id, oncall_handoff_notification_rule_id)

```ruby
begin
  # Delete a User's Handoff Notification rule
  data, status_code, headers = api_instance.delete_user_handoff_notification_rule_with_http_info(accept, content_type, id, oncall_handoff_notification_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_handoff_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **oncall_handoff_notification_rule_id** | **String** | The oncall handoff notification rule ID on the user. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_notification_rule

> delete_user_notification_rule(accept, content_type, id, notification_rule_id)

Delete a user's notification rule

Remove a user's notification rule.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
notification_rule_id = 'notification_rule_id_example' # String | The notification rule ID on the user.

begin
  # Delete a user's notification rule
  api_instance.delete_user_notification_rule(accept, content_type, id, notification_rule_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_notification_rule: #{e}"
end
```

#### Using the delete_user_notification_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_notification_rule_with_http_info(accept, content_type, id, notification_rule_id)

```ruby
begin
  # Delete a user's notification rule
  data, status_code, headers = api_instance.delete_user_notification_rule_with_http_info(accept, content_type, id, notification_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **notification_rule_id** | **String** | The notification rule ID on the user. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_session

> delete_user_session(accept, content_type, id, type, session_id)

Delete a user's session

Delete a user's session.  Beginning November 2021, user sessions no longer includes newly issued OAuth tokens.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:sessions.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
type = 'type_example' # String | The session type for the user session ID.
session_id = 'session_id_example' # String | The session ID for the user.

begin
  # Delete a user's session
  api_instance.delete_user_session(accept, content_type, id, type, session_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_session: #{e}"
end
```

#### Using the delete_user_session_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_session_with_http_info(accept, content_type, id, type, session_id)

```ruby
begin
  # Delete a user's session
  data, status_code, headers = api_instance.delete_user_session_with_http_info(accept, content_type, id, type, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **type** | **String** | The session type for the user session ID. |  |
| **session_id** | **String** | The session ID for the user. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user_sessions

> delete_user_sessions(accept, content_type, id)

Delete all user sessions

Delete all user sessions.  Beginning November 2021, user sessions no longer includes newly issued OAuth tokens.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:sessions.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Delete all user sessions
  api_instance.delete_user_sessions(accept, content_type, id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_sessions: #{e}"
end
```

#### Using the delete_user_sessions_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_sessions_with_http_info(accept, content_type, id)

```ruby
begin
  # Delete all user sessions
  data, status_code, headers = api_instance.delete_user_sessions_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_sessions_with_http_info: #{e}"
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


## delete_user_status_update_notification_rule

> delete_user_status_update_notification_rule(accept, content_type, x_early_access, id, status_update_notification_rule_id)

Delete a user's status update notification rule

Remove a user's status update notification rule.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  <!-- theme: warning --> > ### Early Access > This endpoint is in Early Access and may change at any time. You must pass in the X-EARLY-ACCESS header to access it.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
x_early_access = 'status-update-notification-rules' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change! 
id = 'id_example' # String | The ID of the resource.
status_update_notification_rule_id = 'status_update_notification_rule_id_example' # String | The status update notification rule ID on the user.

begin
  # Delete a user's status update notification rule
  api_instance.delete_user_status_update_notification_rule(accept, content_type, x_early_access, id, status_update_notification_rule_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_status_update_notification_rule: #{e}"
end
```

#### Using the delete_user_status_update_notification_rule_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_status_update_notification_rule_with_http_info(accept, content_type, x_early_access, id, status_update_notification_rule_id)

```ruby
begin
  # Delete a user's status update notification rule
  data, status_code, headers = api_instance.delete_user_status_update_notification_rule_with_http_info(accept, content_type, x_early_access, id, status_update_notification_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_status_update_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change!  | [default to &#39;status-update-notification-rules&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **status_update_notification_rule_id** | **String** | The status update notification rule ID on the user. |  |

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_current_user

> <CreateUser201Response> get_current_user(accept, content_type, opts)

Get the current user

Get details about the current user.  This endpoint can only be used with a [user-level API key](https://support.pagerduty.com/docs/using-the-api#section-generating-a-personal-rest-api-key) or a key generated through an OAuth flow. This will not work if the request is made with an account-level access token.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users) 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  include: 'contact_methods' # String | Array of additional Models to include in response.
}

begin
  # Get the current user
  result = api_instance.get_current_user(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_current_user: #{e}"
end
```

#### Using the get_current_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUser201Response>, Integer, Hash)> get_current_user_with_http_info(accept, content_type, opts)

```ruby
begin
  # Get the current user
  data, status_code, headers = api_instance.get_current_user_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUser201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_current_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**CreateUser201Response**](CreateUser201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <CreateUser201Response> get_user(accept, content_type, id, opts)

Get a user

Get details about an existing user.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  include: 'contact_methods' # String | Array of additional Models to include in response.
}

begin
  # Get a user
  result = api_instance.get_user(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUser201Response>, Integer, Hash)> get_user_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Get a user
  data, status_code, headers = api_instance.get_user_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUser201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**CreateUser201Response**](CreateUser201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_contact_method

> <CreateUserContactMethod201Response> get_user_contact_method(accept, content_type, id, contact_method_id)

Get a user's contact method

Get details about a User's contact method.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
contact_method_id = 'contact_method_id_example' # String | The contact method ID on the user.

begin
  # Get a user's contact method
  result = api_instance.get_user_contact_method(accept, content_type, id, contact_method_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_contact_method: #{e}"
end
```

#### Using the get_user_contact_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserContactMethod201Response>, Integer, Hash)> get_user_contact_method_with_http_info(accept, content_type, id, contact_method_id)

```ruby
begin
  # Get a user's contact method
  data, status_code, headers = api_instance.get_user_contact_method_with_http_info(accept, content_type, id, contact_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserContactMethod201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_contact_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **contact_method_id** | **String** | The contact method ID on the user. |  |

### Return type

[**CreateUserContactMethod201Response**](CreateUserContactMethod201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_contact_methods

> <GetUserContactMethods200Response> get_user_contact_methods(accept, content_type, id)

List a user's contact methods

List contact methods of your PagerDuty user.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # List a user's contact methods
  result = api_instance.get_user_contact_methods(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_contact_methods: #{e}"
end
```

#### Using the get_user_contact_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserContactMethods200Response>, Integer, Hash)> get_user_contact_methods_with_http_info(accept, content_type, id)

```ruby
begin
  # List a user's contact methods
  data, status_code, headers = api_instance.get_user_contact_methods_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserContactMethods200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_contact_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetUserContactMethods200Response**](GetUserContactMethods200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_handoff_notifiaction_rule

> <CreateUserHandoffNotificationRuleRequest> get_user_handoff_notifiaction_rule(accept, content_type, id, oncall_handoff_notification_rule_id)

Get a user's handoff notification rule

Get details about a User's Handoff Notification Rule. Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account. For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
oncall_handoff_notification_rule_id = 'oncall_handoff_notification_rule_id_example' # String | The oncall handoff notification rule ID on the user.

begin
  # Get a user's handoff notification rule
  result = api_instance.get_user_handoff_notifiaction_rule(accept, content_type, id, oncall_handoff_notification_rule_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_handoff_notifiaction_rule: #{e}"
end
```

#### Using the get_user_handoff_notifiaction_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserHandoffNotificationRuleRequest>, Integer, Hash)> get_user_handoff_notifiaction_rule_with_http_info(accept, content_type, id, oncall_handoff_notification_rule_id)

```ruby
begin
  # Get a user's handoff notification rule
  data, status_code, headers = api_instance.get_user_handoff_notifiaction_rule_with_http_info(accept, content_type, id, oncall_handoff_notification_rule_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserHandoffNotificationRuleRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_handoff_notifiaction_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **oncall_handoff_notification_rule_id** | **String** | The oncall handoff notification rule ID on the user. |  |

### Return type

[**CreateUserHandoffNotificationRuleRequest**](CreateUserHandoffNotificationRuleRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_handoff_notification_rules

> <GetUserHandoffNotificationRules200Response> get_user_handoff_notification_rules(accept, content_type, id)

List a User's Handoff Notification Rules

List Handoff Notification Rules of your PagerDuty User. Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account. For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # List a User's Handoff Notification Rules
  result = api_instance.get_user_handoff_notification_rules(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_handoff_notification_rules: #{e}"
end
```

#### Using the get_user_handoff_notification_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserHandoffNotificationRules200Response>, Integer, Hash)> get_user_handoff_notification_rules_with_http_info(accept, content_type, id)

```ruby
begin
  # List a User's Handoff Notification Rules
  data, status_code, headers = api_instance.get_user_handoff_notification_rules_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserHandoffNotificationRules200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_handoff_notification_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetUserHandoffNotificationRules200Response**](GetUserHandoffNotificationRules200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_license

> <GetUserLicense200Response> get_user_license(accept, content_type, id)

Get the License allocated to a User

Get the License allocated to a User  Scoped OAuth requires: `licenses.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # Get the License allocated to a User
  result = api_instance.get_user_license(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_license: #{e}"
end
```

#### Using the get_user_license_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserLicense200Response>, Integer, Hash)> get_user_license_with_http_info(accept, content_type, id)

```ruby
begin
  # Get the License allocated to a User
  data, status_code, headers = api_instance.get_user_license_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserLicense200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_license_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetUserLicense200Response**](GetUserLicense200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_notification_rule

> <CreateUserNotificationRuleRequest> get_user_notification_rule(accept, content_type, id, notification_rule_id, opts)

Get a user's notification rule

Get details about a user's notification rule.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
notification_rule_id = 'notification_rule_id_example' # String | The notification rule ID on the user.
opts = {
  include: 'contact_methods' # String | Array of additional details to include.
}

begin
  # Get a user's notification rule
  result = api_instance.get_user_notification_rule(accept, content_type, id, notification_rule_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_notification_rule: #{e}"
end
```

#### Using the get_user_notification_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserNotificationRuleRequest>, Integer, Hash)> get_user_notification_rule_with_http_info(accept, content_type, id, notification_rule_id, opts)

```ruby
begin
  # Get a user's notification rule
  data, status_code, headers = api_instance.get_user_notification_rule_with_http_info(accept, content_type, id, notification_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserNotificationRuleRequest>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **notification_rule_id** | **String** | The notification rule ID on the user. |  |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**CreateUserNotificationRuleRequest**](CreateUserNotificationRuleRequest.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_notification_rules

> <GetUserNotificationRules200Response> get_user_notification_rules(accept, content_type, id, opts)

List a user's notification rules

List notification rules of your PagerDuty user.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  include: 'contact_methods', # String | Array of additional details to include.
  urgency: 'high' # String | The incident urgency for which the notification rules are applied. If not specified, defaults to `high`.
}

begin
  # List a user's notification rules
  result = api_instance.get_user_notification_rules(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_notification_rules: #{e}"
end
```

#### Using the get_user_notification_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserNotificationRules200Response>, Integer, Hash)> get_user_notification_rules_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List a user's notification rules
  data, status_code, headers = api_instance.get_user_notification_rules_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserNotificationRules200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_notification_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **include** | **String** | Array of additional details to include. | [optional] |
| **urgency** | **String** | The incident urgency for which the notification rules are applied. If not specified, defaults to &#x60;high&#x60;. | [optional] |

### Return type

[**GetUserNotificationRules200Response**](GetUserNotificationRules200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_notification_subscriptions

> <GetTeamNotificationSubscriptions200Response> get_user_notification_subscriptions(accept, id)

List Notification Subscriptions

Retrieve a list of Notification Subscriptions the given User has.  <!-- theme: warning --> > Users must be added through `POST /users/{id}/notification_subscriptions` to be returned from this endpoint.  Scoped OAuth requires: `subscribers.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.

begin
  # List Notification Subscriptions
  result = api_instance.get_user_notification_subscriptions(accept, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_notification_subscriptions: #{e}"
end
```

#### Using the get_user_notification_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTeamNotificationSubscriptions200Response>, Integer, Hash)> get_user_notification_subscriptions_with_http_info(accept, id)

```ruby
begin
  # List Notification Subscriptions
  data, status_code, headers = api_instance.get_user_notification_subscriptions_with_http_info(accept, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTeamNotificationSubscriptions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_notification_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetTeamNotificationSubscriptions200Response**](GetTeamNotificationSubscriptions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_session

> <GetUserSession200Response> get_user_session(accept, content_type, id, type, session_id)

Get a user's session

Get details about a user's session.  Beginning November 2021, user sessions no longer includes newly issued OAuth tokens.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:sessions.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
type = 'type_example' # String | The session type for the user session ID.
session_id = 'session_id_example' # String | The session ID for the user.

begin
  # Get a user's session
  result = api_instance.get_user_session(accept, content_type, id, type, session_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_session: #{e}"
end
```

#### Using the get_user_session_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserSession200Response>, Integer, Hash)> get_user_session_with_http_info(accept, content_type, id, type, session_id)

```ruby
begin
  # Get a user's session
  data, status_code, headers = api_instance.get_user_session_with_http_info(accept, content_type, id, type, session_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserSession200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_session_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **type** | **String** | The session type for the user session ID. |  |
| **session_id** | **String** | The session ID for the user. |  |

### Return type

[**GetUserSession200Response**](GetUserSession200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_sessions

> <GetUserSessions200Response> get_user_sessions(accept, content_type, id)

List a user's active sessions

List active sessions of a PagerDuty user.  Beginning November 2021, active sessions no longer includes newly issued OAuth tokens.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:sessions.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.

begin
  # List a user's active sessions
  result = api_instance.get_user_sessions(accept, content_type, id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_sessions: #{e}"
end
```

#### Using the get_user_sessions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserSessions200Response>, Integer, Hash)> get_user_sessions_with_http_info(accept, content_type, id)

```ruby
begin
  # List a user's active sessions
  data, status_code, headers = api_instance.get_user_sessions_with_http_info(accept, content_type, id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserSessions200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_sessions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |

### Return type

[**GetUserSessions200Response**](GetUserSessions200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_status_update_notification_rule

> <GetUserStatusUpdateNotificationRule200Response> get_user_status_update_notification_rule(accept, content_type, x_early_access, id, status_update_notification_rule_id, opts)

Get a user's status update notification rule

Get details about a user's status update notification rule.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  <!-- theme: warning --> > ### Early Access > This endpoint is in Early Access and may change at any time. You must pass in the X-EARLY-ACCESS header to access it.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
x_early_access = 'status-update-notification-rules' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change! 
id = 'id_example' # String | The ID of the resource.
status_update_notification_rule_id = 'status_update_notification_rule_id_example' # String | The status update notification rule ID on the user.
opts = {
  include: 'contact_methods' # String | Array of additional details to include.
}

begin
  # Get a user's status update notification rule
  result = api_instance.get_user_status_update_notification_rule(accept, content_type, x_early_access, id, status_update_notification_rule_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_status_update_notification_rule: #{e}"
end
```

#### Using the get_user_status_update_notification_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserStatusUpdateNotificationRule200Response>, Integer, Hash)> get_user_status_update_notification_rule_with_http_info(accept, content_type, x_early_access, id, status_update_notification_rule_id, opts)

```ruby
begin
  # Get a user's status update notification rule
  data, status_code, headers = api_instance.get_user_status_update_notification_rule_with_http_info(accept, content_type, x_early_access, id, status_update_notification_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserStatusUpdateNotificationRule200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_status_update_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change!  | [default to &#39;status-update-notification-rules&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **status_update_notification_rule_id** | **String** | The status update notification rule ID on the user. |  |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**GetUserStatusUpdateNotificationRule200Response**](GetUserStatusUpdateNotificationRule200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_status_update_notification_rules

> <GetUserStatusUpdateNotificationRules200Response> get_user_status_update_notification_rules(accept, content_type, id, x_early_access, opts)

List a user's status update notification rules

List status update notification rules of your PagerDuty user.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  <!-- theme: warning --> > ### Early Access > This endpoint is in Early Access and may change at any time. You must pass in the X-EARLY-ACCESS header to access it.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
x_early_access = 'status-update-notification-rules' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change! 
opts = {
  include: 'contact_methods' # String | Array of additional details to include.
}

begin
  # List a user's status update notification rules
  result = api_instance.get_user_status_update_notification_rules(accept, content_type, id, x_early_access, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_status_update_notification_rules: #{e}"
end
```

#### Using the get_user_status_update_notification_rules_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserStatusUpdateNotificationRules200Response>, Integer, Hash)> get_user_status_update_notification_rules_with_http_info(accept, content_type, id, x_early_access, opts)

```ruby
begin
  # List a user's status update notification rules
  data, status_code, headers = api_instance.get_user_status_update_notification_rules_with_http_info(accept, content_type, id, x_early_access, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserStatusUpdateNotificationRules200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_status_update_notification_rules_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change!  | [default to &#39;status-update-notification-rules&#39;] |
| **include** | **String** | Array of additional details to include. | [optional] |

### Return type

[**GetUserStatusUpdateNotificationRules200Response**](GetUserStatusUpdateNotificationRules200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <ListUsers200Response> list_users(accept, content_type, opts)

List users

List users of your PagerDuty account, optionally filtered by a search query.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.read` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
opts = {
  query: 'query_example', # String | Filters the result, showing only the records whose name matches the query.
  team_ids: ['inner_example'], # Array<String> | An array of team IDs. Only results related to these teams will be returned. Account must have the `teams` ability to use this parameter.
  limit: 56, # Integer | The number of results per page.
  offset: 56, # Integer | Offset to start pagination search results.
  total: true, # Boolean | By default the `total` field in pagination responses is set to `null` to provide the fastest possible response times. Set `total` to `true` for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  include: 'contact_methods' # String | Array of additional Models to include in response.
}

begin
  # List users
  result = api_instance.list_users(accept, content_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200Response>, Integer, Hash)> list_users_with_http_info(accept, content_type, opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_users_with_http_info(accept, content_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **query** | **String** | Filters the result, showing only the records whose name matches the query. | [optional] |
| **team_ids** | [**Array&lt;String&gt;**](String.md) | An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter. | [optional] |
| **limit** | **Integer** | The number of results per page. | [optional] |
| **offset** | **Integer** | Offset to start pagination search results. | [optional] |
| **total** | **Boolean** | By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information.  | [optional][default to false] |
| **include** | **String** | Array of additional Models to include in response. | [optional] |

### Return type

[**ListUsers200Response**](ListUsers200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users_audit_records

> <AuditRecordResponseSchema> list_users_audit_records(accept, content_type, id, opts)

List audit records for a user

The response will include audit records with changes that are made to the identified user not changes made by the identified user.   The returned records are sorted by the `execution_time` from newest to oldest.  See [`Cursor-based pagination`](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: `audit_records.read` 

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

api_instance = OpenapiClient::UsersApi.new
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
  # List audit records for a user
  result = api_instance.list_users_audit_records(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users_audit_records: #{e}"
end
```

#### Using the list_users_audit_records_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AuditRecordResponseSchema>, Integer, Hash)> list_users_audit_records_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # List audit records for a user
  data, status_code, headers = api_instance.list_users_audit_records_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AuditRecordResponseSchema>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users_audit_records_with_http_info: #{e}"
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


## unsubscribe_user_notification_subscriptions

> <RemoveBusinessServiceNotificationSubscriber200Response> unsubscribe_user_notification_subscriptions(accept, id, opts)

Remove Notification Subscriptions

Unsubscribe the given User from Notifications on the matching Subscribable entities.  Scoped OAuth requires: `subscribers.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
id = 'id_example' # String | The ID of the resource.
opts = {
  create_team_notification_subscriptions_request: OpenapiClient::CreateTeamNotificationSubscriptionsRequest.new({subscribables: [OpenapiClient::NotificationSubscribable.new]}) # CreateTeamNotificationSubscriptionsRequest | The entities to unsubscribe from.
}

begin
  # Remove Notification Subscriptions
  result = api_instance.unsubscribe_user_notification_subscriptions(accept, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->unsubscribe_user_notification_subscriptions: #{e}"
end
```

#### Using the unsubscribe_user_notification_subscriptions_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RemoveBusinessServiceNotificationSubscriber200Response>, Integer, Hash)> unsubscribe_user_notification_subscriptions_with_http_info(accept, id, opts)

```ruby
begin
  # Remove Notification Subscriptions
  data, status_code, headers = api_instance.unsubscribe_user_notification_subscriptions_with_http_info(accept, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RemoveBusinessServiceNotificationSubscriber200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->unsubscribe_user_notification_subscriptions_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_team_notification_subscriptions_request** | [**CreateTeamNotificationSubscriptionsRequest**](CreateTeamNotificationSubscriptionsRequest.md) | The entities to unsubscribe from. | [optional] |

### Return type

[**RemoveBusinessServiceNotificationSubscriber200Response**](RemoveBusinessServiceNotificationSubscriber200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user

> <CreateUser201Response> update_user(accept, content_type, id, opts)

Update a user

Update an existing user.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
opts = {
  create_user_request: OpenapiClient::CreateUserRequest.new({user: OpenapiClient::CreateUserRequestUser.new({name: 'name_example', type: 'user', email: 'email_example'})}) # CreateUserRequest | The user to be updated.
}

begin
  # Update a user
  result = api_instance.update_user(accept, content_type, id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user: #{e}"
end
```

#### Using the update_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUser201Response>, Integer, Hash)> update_user_with_http_info(accept, content_type, id, opts)

```ruby
begin
  # Update a user
  data, status_code, headers = api_instance.update_user_with_http_info(accept, content_type, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUser201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **create_user_request** | [**CreateUserRequest**](CreateUserRequest.md) | The user to be updated. | [optional] |

### Return type

[**CreateUser201Response**](CreateUser201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_contact_method

> <CreateUserContactMethod201Response> update_user_contact_method(accept, content_type, id, contact_method_id, opts)

Update a user's contact method

Update a User's contact method.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
contact_method_id = 'contact_method_id_example' # String | The contact method ID on the user.
opts = {
  create_user_contact_method_request: OpenapiClient::CreateUserContactMethodRequest.new({contact_method: OpenapiClient::EmailContactMethod.new({label: 'label_example', address: 'address_example'})}) # CreateUserContactMethodRequest | The user's contact method to be updated.
}

begin
  # Update a user's contact method
  result = api_instance.update_user_contact_method(accept, content_type, id, contact_method_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_contact_method: #{e}"
end
```

#### Using the update_user_contact_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CreateUserContactMethod201Response>, Integer, Hash)> update_user_contact_method_with_http_info(accept, content_type, id, contact_method_id, opts)

```ruby
begin
  # Update a user's contact method
  data, status_code, headers = api_instance.update_user_contact_method_with_http_info(accept, content_type, id, contact_method_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CreateUserContactMethod201Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_contact_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **contact_method_id** | **String** | The contact method ID on the user. |  |
| **create_user_contact_method_request** | [**CreateUserContactMethodRequest**](CreateUserContactMethodRequest.md) | The user&#39;s contact method to be updated. | [optional] |

### Return type

[**CreateUserContactMethod201Response**](CreateUserContactMethod201Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_handoff_notification

> <UpdateUserHandoffNotification200Response> update_user_handoff_notification(accept, content_type, id, oncall_handoff_notification_rule_id, opts)

Update a User's Handoff Notification Rule

Update a User's Handoff Notification Rule. Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account. For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
oncall_handoff_notification_rule_id = 'oncall_handoff_notification_rule_id_example' # String | The oncall handoff notification rule ID on the user.
opts = {
  create_user_handoff_notification_rule_request: OpenapiClient::CreateUserHandoffNotificationRuleRequest.new({oncall_handoff_notification_rule: OpenapiClient::HandoffNotificationRule.new({id: 'id_example', handoff_type: 'both', contact_method: OpenapiClient::ContactMethodReference.new({type: 'email_contact_method_reference'})})}) # CreateUserHandoffNotificationRuleRequest | The User's Handoff Notification Rule to be updated.
}

begin
  # Update a User's Handoff Notification Rule
  result = api_instance.update_user_handoff_notification(accept, content_type, id, oncall_handoff_notification_rule_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_handoff_notification: #{e}"
end
```

#### Using the update_user_handoff_notification_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUserHandoffNotification200Response>, Integer, Hash)> update_user_handoff_notification_with_http_info(accept, content_type, id, oncall_handoff_notification_rule_id, opts)

```ruby
begin
  # Update a User's Handoff Notification Rule
  data, status_code, headers = api_instance.update_user_handoff_notification_with_http_info(accept, content_type, id, oncall_handoff_notification_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUserHandoffNotification200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_handoff_notification_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **oncall_handoff_notification_rule_id** | **String** | The oncall handoff notification rule ID on the user. |  |
| **create_user_handoff_notification_rule_request** | [**CreateUserHandoffNotificationRuleRequest**](CreateUserHandoffNotificationRuleRequest.md) | The User&#39;s Handoff Notification Rule to be updated. | [optional] |

### Return type

[**UpdateUserHandoffNotification200Response**](UpdateUserHandoffNotification200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_notification_rule

> <UpdateUserNotificationRule200Response> update_user_notification_rule(accept, content_type, id, notification_rule_id, opts)

Update a user's notification rule

Update a user's notification rule.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users:contact_methods.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
id = 'id_example' # String | The ID of the resource.
notification_rule_id = 'notification_rule_id_example' # String | The notification rule ID on the user.
opts = {
  create_user_notification_rule_request: OpenapiClient::CreateUserNotificationRuleRequest.new({notification_rule: OpenapiClient::NotificationRule.new({type: 'assignment_notification_rule', start_delay_in_minutes: 37, contact_method: OpenapiClient::ContactMethodReference.new({type: 'email_contact_method_reference'}), urgency: 'high'})}) # CreateUserNotificationRuleRequest | The user's notification rule to be updated.
}

begin
  # Update a user's notification rule
  result = api_instance.update_user_notification_rule(accept, content_type, id, notification_rule_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_notification_rule: #{e}"
end
```

#### Using the update_user_notification_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUserNotificationRule200Response>, Integer, Hash)> update_user_notification_rule_with_http_info(accept, content_type, id, notification_rule_id, opts)

```ruby
begin
  # Update a user's notification rule
  data, status_code, headers = api_instance.update_user_notification_rule_with_http_info(accept, content_type, id, notification_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUserNotificationRule200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **notification_rule_id** | **String** | The notification rule ID on the user. |  |
| **create_user_notification_rule_request** | [**CreateUserNotificationRuleRequest**](CreateUserNotificationRuleRequest.md) | The user&#39;s notification rule to be updated. | [optional] |

### Return type

[**UpdateUserNotificationRule200Response**](UpdateUserNotificationRule200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_user_status_update_notification_rule

> <UpdateUserStatusUpdateNotificationRule200Response> update_user_status_update_notification_rule(accept, content_type, x_early_access, id, status_update_notification_rule_id, opts)

Update a user's status update notification rule

Update a user's status update notification rule.  Users are members of a PagerDuty account that have the ability to interact with Incidents and other data on the account.  <!-- theme: warning --> > ### Early Access > This endpoint is in Early Access and may change at any time. You must pass in the X-EARLY-ACCESS header to access it.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#users)  Scoped OAuth requires: `users.write` 

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

api_instance = OpenapiClient::UsersApi.new
accept = 'accept_example' # String | The `Accept` header is used as a versioning header.
content_type = 'application/json' # String | 
x_early_access = 'status-update-notification-rules' # String | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change! 
id = 'id_example' # String | The ID of the resource.
status_update_notification_rule_id = 'status_update_notification_rule_id_example' # String | The status update notification rule ID on the user.
opts = {
  create_user_status_update_notification_rule201_response: OpenapiClient::CreateUserStatusUpdateNotificationRule201Response.new({status_update_notification_rule: OpenapiClient::StatusUpdateNotificationRule.new({contact_method: OpenapiClient::ContactMethodReference.new({type: 'email_contact_method_reference'})})}) # CreateUserStatusUpdateNotificationRule201Response | The user's status update notification rule to be updated.
}

begin
  # Update a user's status update notification rule
  result = api_instance.update_user_status_update_notification_rule(accept, content_type, x_early_access, id, status_update_notification_rule_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_status_update_notification_rule: #{e}"
end
```

#### Using the update_user_status_update_notification_rule_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateUserStatusUpdateNotificationRule200Response>, Integer, Hash)> update_user_status_update_notification_rule_with_http_info(accept, content_type, x_early_access, id, status_update_notification_rule_id, opts)

```ruby
begin
  # Update a user's status update notification rule
  data, status_code, headers = api_instance.update_user_status_update_notification_rule_with_http_info(accept, content_type, x_early_access, id, status_update_notification_rule_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateUserStatusUpdateNotificationRule200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_status_update_notification_rule_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept** | **String** | The &#x60;Accept&#x60; header is used as a versioning header. | [default to &#39;application/vnd.pagerduty+json;version&#x3D;2&#39;] |
| **content_type** | **String** |  | [default to &#39;application/json&#39;] |
| **x_early_access** | **String** | This header indicates that this API endpoint is __UNDER CONSTRUCTION__ and may change at any time. You __MUST__ pass in this header and the above value. Do not use this endpoint in production, as it may change!  | [default to &#39;status-update-notification-rules&#39;] |
| **id** | **String** | The ID of the resource. |  |
| **status_update_notification_rule_id** | **String** | The status update notification rule ID on the user. |  |
| **create_user_status_update_notification_rule201_response** | [**CreateUserStatusUpdateNotificationRule201Response**](CreateUserStatusUpdateNotificationRule201Response.md) | The user&#39;s status update notification rule to be updated. | [optional] |

### Return type

[**UpdateUserStatusUpdateNotificationRule200Response**](UpdateUserStatusUpdateNotificationRule200Response.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

