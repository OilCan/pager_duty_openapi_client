# PagerDutyOpenapiClient::CreateUserRequestUser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the user. |  |
| **type** | **String** | The type of object being created. | [default to &#39;user&#39;] |
| **email** | **String** | The user&#39;s email address. |  |
| **time_zone** | **String** | The preferred time zone name. If null, the account&#39;s time zone will be used. | [optional] |
| **color** | **String** | The schedule color. | [optional] |
| **role** | **String** | The user role. Account must have the &#x60;read_only_users&#x60; ability to set a user as a &#x60;read_only_user&#x60; or a &#x60;read_only_limited_user&#x60;, and must have advanced permissions abilities to set a user as &#x60;observer&#x60; or &#x60;restricted_access&#x60;. | [optional] |
| **avatar_url** | **String** | The URL of the user&#39;s avatar. | [optional][readonly] |
| **description** | **String** | The user&#39;s bio. | [optional] |
| **invitation_sent** | **Boolean** | If true, the user has an outstanding invitation. | [optional][readonly] |
| **job_title** | **String** | The user&#39;s title. | [optional] |
| **teams** | [**Array&lt;TeamReference&gt;**](TeamReference.md) | The list of teams to which the user belongs. Account must have the &#x60;teams&#x60; ability to set this. | [optional][readonly] |
| **contact_methods** | [**Array&lt;ContactMethodReference&gt;**](ContactMethodReference.md) | The list of contact methods for the user. | [optional][readonly] |
| **notification_rules** | [**Array&lt;NotificationRuleReference&gt;**](NotificationRuleReference.md) | The list of notification rules for the user. | [optional][readonly] |
| **license** | [**CreateUserRequestUserAllOfLicense**](CreateUserRequestUserAllOfLicense.md) |  | [optional] |

## Example

```ruby
require 'pager_duty_openapi_client'

instance = PagerDutyOpenapiClient::CreateUserRequestUser.new(
  name: null,
  type: null,
  email: null,
  time_zone: null,
  color: null,
  role: null,
  avatar_url: null,
  description: null,
  invitation_sent: null,
  job_title: null,
  teams: null,
  contact_methods: null,
  notification_rules: null,
  license: null
)
```

