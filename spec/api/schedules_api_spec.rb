=begin
#PagerDuty API

#This document describes the PagerDuty REST APIs.  For guides and examples please visit our [Documentation.](https://developer.pagerduty.com/docs/get-started/getting-started/)  Our REST APIs are defined in OpenAPI v3.x. You can view the schema at [github.com/PagerDuty/api-schema](https://github.com/PagerDuty/api-schema).  Note that properties in some schemas have fields not shown by default such as `readOnly`, `format`, and `default`. Hover your cursor over the right column that looks like `optional+1` to see the full list of fields. 

The version of the OpenAPI document: 2.0.0
Contact: support@pagerduty.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::SchedulesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SchedulesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::SchedulesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SchedulesApi' do
    it 'should create an instance of SchedulesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::SchedulesApi)
    end
  end

  # unit tests for create_schedule
  # Create a schedule
  # Create a new on-call schedule.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;schedules.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :overflow Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter &#x60;overflow&#x3D;true&#x60; is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from &#x60;2011-06-01T10:00:00Z&#x60; to &#x60;2011-06-01T14:00:00Z&#x60;:   - If you don&#39;t pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T10:00:00Z&#x60; and end of &#x60;2011-06-01T14:00:00Z&#x60;. - If you do pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T00:00:00Z&#x60; and end of &#x60;2011-06-02T00:00:00Z&#x60;. 
  # @option opts [CreateScheduleRequest] :create_schedule_request The schedule to be created.
  # @return [CreateScheduleRequest]
  describe 'create_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_schedule_override
  # Create one or more overrides
  # Create one or more overrides, each for a specific user covering a specified time range. If you create an override on top of an existing override, the last created override will have priority.  A Schedule determines the time periods that users are On-Call.  Note: An older implementation of this endpoint only supported creating a single ocverride per request. That functionality is still supported, but deprecated and may be removed in the future.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;schedules.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param create_schedule_override_request The overrides to be created
  # @param [Hash] opts the optional parameters
  # @return [Array<CreateScheduleOverride201ResponseInner>]
  describe 'create_schedule_override test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for create_schedule_preview
  # Preview a schedule
  # Preview what an on-call schedule would look like without saving it.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;schedules.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :since The start of the date range over which you want to search.
  # @option opts [Time] :_until The end of the date range over which you want to search.
  # @option opts [Boolean] :overflow Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter &#x60;overflow&#x3D;true&#x60; is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from &#x60;2011-06-01T10:00:00Z&#x60; to &#x60;2011-06-01T14:00:00Z&#x60;:   - If you don&#39;t pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T10:00:00Z&#x60; and end of &#x60;2011-06-01T14:00:00Z&#x60;. - If you do pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T00:00:00Z&#x60; and end of &#x60;2011-06-02T00:00:00Z&#x60;. 
  # @option opts [CreateScheduleRequest] :create_schedule_request The schedule to be previewed.
  # @return [CreateScheduleRequest]
  describe 'create_schedule_preview test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_schedule
  # Delete a schedule
  # Delete an on-call schedule.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;schedules.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_schedule_override
  # Delete an override
  # Remove an override.  You cannot remove a past override.  If the override start time is before the current time, but the end time is after the current time, the override will be truncated to the current time.  If the override is truncated, the status code will be 200 OK, as opposed to a 204 No Content for a successful delete.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;schedules.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param override_id The override ID on the schedule.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_schedule_override test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_schedule
  # Get a schedule
  # Show detailed information about a schedule, including entries for each layer. Scoped OAuth requires: &#x60;schedules.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :time_zone Time zone in which results will be rendered. This will default to the schedule&#39;s time zone.
  # @option opts [Time] :since The start of the date range over which you want to show schedule entries. Defaults to 2 weeks before until if an until is given.
  # @option opts [Time] :_until The end of the date range over which you want to show schedule entries. Defaults to 2 weeks after since if a since is given.
  # @option opts [Boolean] :overflow Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter &#x60;overflow&#x3D;true&#x60; is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from &#x60;2011-06-01T10:00:00Z&#x60; to &#x60;2011-06-01T14:00:00Z&#x60;:   - If you don&#39;t pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T10:00:00Z&#x60; and end of &#x60;2011-06-01T14:00:00Z&#x60;. - If you do pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T00:00:00Z&#x60; and end of &#x60;2011-06-02T00:00:00Z&#x60;. 
  # @return [CreateScheduleRequest]
  describe 'get_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_schedule_overrides
  # List overrides
  # List overrides for a given time range.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;schedules.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param since The start of the date range over which you want to search.
  # @param _until The end of the date range over which you want to search.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :editable When this parameter is present, only editable overrides will be returned. The result will only include the id of the override if this parameter is present. Only future overrides are editable.
  # @option opts [Boolean] :overflow Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter overflow&#x3D;true is passed. This parameter defaults to false.
  # @return [ListScheduleOverrides201Response]
  describe 'list_schedule_overrides test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_schedule_users
  # List users on call.
  # List all of the users on call in a given schedule for a given time range.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;users.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [Time] :since The start of the date range over which you want to search.
  # @option opts [Time] :_until The end of the date range over which you want to search.
  # @return [ListScheduleUsers200Response]
  describe 'list_schedule_users test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_schedules
  # List schedules
  # List the on-call schedules.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;schedules.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of results per page.
  # @option opts [Integer] :offset Offset to start pagination search results.
  # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
  # @option opts [String] :include Array of additional details to include.
  # @option opts [String] :time_zone Time zone in which results will be rendered. This will default to the current user&#39;s time zone and then the account&#39;s time zone.
  # @return [ListSchedules200Response]
  describe 'list_schedules test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_schedules_audit_records
  # List audit records for a schedule
  # The returned records are sorted by the &#x60;execution_time&#x60; from newest to oldest.  See [&#x60;Cursor-based pagination&#x60;](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: &#x60;audit_records.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API.
  # @option opts [String] :cursor Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  # @option opts [Time] :since The start of the date range over which you want to search. If not specified, defaults to &#x60;now() - 24 hours&#x60; (past 24 hours)
  # @option opts [Time] :_until The end of the date range over which you want to search. If not specified, defaults to &#x60;now()&#x60;. May not be more than 31 days after &#x60;since&#x60;.
  # @return [AuditRecordResponseSchema]
  describe 'list_schedules_audit_records test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_schedule
  # Update a schedule
  # Update an existing on-call schedule.  A Schedule determines the time periods that users are On-Call.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#schedules)  Scoped OAuth requires: &#x60;schedules.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :overflow Any on-call schedule entries that pass the date range bounds will be truncated at the bounds, unless the parameter &#x60;overflow&#x3D;true&#x60; is passed. This parameter defaults to false. For instance, if your schedule is a rotation that changes daily at midnight UTC, and your date range is from &#x60;2011-06-01T10:00:00Z&#x60; to &#x60;2011-06-01T14:00:00Z&#x60;:   - If you don&#39;t pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T10:00:00Z&#x60; and end of &#x60;2011-06-01T14:00:00Z&#x60;. - If you do pass the &#x60;overflow&#x3D;true&#x60; parameter, you will get one schedule entry returned with a start of &#x60;2011-06-01T00:00:00Z&#x60; and end of &#x60;2011-06-02T00:00:00Z&#x60;. 
  # @option opts [CreateScheduleRequest] :create_schedule_request The schedule to be updated.
  # @return [CreateScheduleRequest]
  describe 'update_schedule test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
