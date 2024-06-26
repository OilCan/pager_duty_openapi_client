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

# Unit tests for PagerDutyOpenapiClient::ExtensionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ExtensionsApi' do
  before do
    # run before each test
    @api_instance = PagerDutyOpenapiClient::ExtensionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExtensionsApi' do
    it 'should create an instance of ExtensionsApi' do
      expect(@api_instance).to be_instance_of(PagerDutyOpenapiClient::ExtensionsApi)
    end
  end

  # unit tests for create_extension
  # Create an extension
  # Create a new Extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateExtensionRequest] :create_extension_request The extension to be created
  # @return [CreateExtensionRequest]
  describe 'create_extension test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_extension
  # Delete an extension
  # Delete an existing extension.  Once the extension is deleted, it will not be accessible from the web UI and new incidents won&#39;t be able to be created for this extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_extension test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for enable_extension
  # Enable an extension
  # Enable an extension that is temporarily disabled. (This API does not require a request body.)  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @return [CreateExtensionRequest]
  describe 'enable_extension test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_extension
  # Get an extension
  # Get details about an existing extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :include Array of additional details to include.
  # @return [CreateExtensionRequest]
  describe 'get_extension test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_extensions
  # List extensions
  # List existing extensions.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of results per page.
  # @option opts [Integer] :offset Offset to start pagination search results.
  # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
  # @option opts [String] :extension_object_id The id of the extension object you want to filter by.
  # @option opts [String] :extension_schema_id Filter the extensions by extension vendor id.
  # @option opts [String] :include Array of additional details to include.
  # @return [ListExtensions200Response]
  describe 'list_extensions test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_extension
  # Update an extension
  # Update an existing extension.  Extensions are representations of Extension Schema objects that are attached to Services.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#extensions)  Scoped OAuth requires: &#x60;extensions.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateExtensionRequest] :create_extension_request The extension to be updated.
  # @return [CreateExtensionRequest]
  describe 'update_extension test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
