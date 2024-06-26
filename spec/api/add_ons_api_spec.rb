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

# Unit tests for PagerDutyOpenapiClient::AddOnsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AddOnsApi' do
  before do
    # run before each test
    @api_instance = PagerDutyOpenapiClient::AddOnsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddOnsApi' do
    it 'should create an instance of AddOnsApi' do
      expect(@api_instance).to be_instance_of(PagerDutyOpenapiClient::AddOnsApi)
    end
  end

  # unit tests for create_addon
  # Install an Add-on
  # Install an Add-on for your account.  Addon&#39;s are pieces of functionality that developers can write to insert new functionality into PagerDuty&#39;s UI.  Given a configuration containing a &#x60;src&#x60; parameter, that URL will be embedded in an &#x60;iframe&#x60; on a page that&#39;s available to users from a drop-down menu.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: &#x60;addons.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateAddonRequest] :create_addon_request The Add-on to be installed.
  # @return [CreateAddon201Response]
  describe 'create_addon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_addon
  # Delete an Add-on
  # Remove an existing Add-on.  Addon&#39;s are pieces of functionality that developers can write to insert new functionality into PagerDuty&#39;s UI.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: &#x60;addons.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_addon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_addon
  # Get an Add-on
  # Get details about an existing Add-on.  Addon&#39;s are pieces of functionality that developers can write to insert new functionality into PagerDuty&#39;s UI.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: &#x60;addons.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @return [CreateAddonRequest]
  describe 'get_addon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_addon
  # List installed Add-ons
  # List all of the Add-ons installed on your account.  Addon&#39;s are pieces of functionality that developers can write to insert new functionality into PagerDuty&#39;s UI.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: &#x60;addons.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of results per page.
  # @option opts [Integer] :offset Offset to start pagination search results.
  # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  # @option opts [String] :include Array of additional Models to include in response.
  # @option opts [Array<String>] :service_ids Filters the results, showing only Add-ons for the given services
  # @option opts [String] :filter Filters the results, showing only Add-ons of the given type
  # @return [ListAddon200Response]
  describe 'list_addon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_addon
  # Update an Add-on
  # Update an existing Add-on.  Addon&#39;s are pieces of functionality that developers can write to insert new functionality into PagerDuty&#39;s UI.  Given a configuration containing a &#x60;src&#x60; parameter, that URL will be embedded in an &#x60;iframe&#x60; on a page that&#39;s available to users from a drop-down menu.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#add-ons)  Scoped OAuth requires: &#x60;addons.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateAddonRequest] :create_addon_request The Add-on to be updated.
  # @return [CreateAddonRequest]
  describe 'update_addon test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
