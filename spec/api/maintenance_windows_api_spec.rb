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

# Unit tests for PagerDutyOpenapiClient::MaintenanceWindowsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MaintenanceWindowsApi' do
  before do
    # run before each test
    @api_instance = PagerDutyOpenapiClient::MaintenanceWindowsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MaintenanceWindowsApi' do
    it 'should create an instance of MaintenanceWindowsApi' do
      expect(@api_instance).to be_instance_of(PagerDutyOpenapiClient::MaintenanceWindowsApi)
    end
  end

  # unit tests for create_maintenance_window
  # Create a maintenance window
  # Create a new maintenance window for the specified services. No new incidents will be created for a service that is in maintenance.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param from The email address of a valid user associated with the account making the request.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateMaintenanceWindowRequest] :create_maintenance_window_request The maintenance window object.
  # @return [CreateMaintenanceWindowRequest]
  describe 'create_maintenance_window test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_maintenance_window
  # Delete or end a maintenance window
  # Delete an existing maintenance window if it&#39;s in the future, or end it if it&#39;s currently on-going. If the maintenance window has already ended it cannot be deleted.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_maintenance_window test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_maintenance_window
  # Get a maintenance window
  # Get an existing maintenance window.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Array of additional Models to include in response.
  # @return [CreateMaintenanceWindowRequest]
  describe 'get_maintenance_window test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_maintenance_windows
  # List maintenance windows
  # List existing maintenance windows, optionally filtered by service and/or team, or whether they are from the past, present or future.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
  # @option opts [Integer] :limit The number of results per page.
  # @option opts [Integer] :offset Offset to start pagination search results.
  # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  # @option opts [Array<String>] :team_ids An array of team IDs. Only results related to these teams will be returned. Account must have the &#x60;teams&#x60; ability to use this parameter.
  # @option opts [Array<String>] :service_ids An array of service IDs. Only results related to these services will be returned.
  # @option opts [String] :include Array of additional Models to include in response.
  # @option opts [String] :filter Only return maintenance windows in a given state.
  # @return [ListMaintenanceWindows200Response]
  describe 'list_maintenance_windows test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_maintenance_window
  # Update a maintenance window
  # Update an existing maintenance window.  A Maintenance Window is used to temporarily disable one or more Services for a set period of time.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#maintenance-windows)  Scoped OAuth requires: &#x60;services.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateMaintenanceWindowRequest] :create_maintenance_window_request The maintenance window to be updated.
  # @return [CreateMaintenanceWindowRequest]
  describe 'update_maintenance_window test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
