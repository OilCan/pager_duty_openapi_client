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

# Unit tests for PagerDutyOpenapiClient::StandardsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'StandardsApi' do
  before do
    # run before each test
    @api_instance = PagerDutyOpenapiClient::StandardsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StandardsApi' do
    it 'should create an instance of StandardsApi' do
      expect(@api_instance).to be_instance_of(PagerDutyOpenapiClient::StandardsApi)
    end
  end

  # unit tests for list_resource_standards
  # List a resource&#39;s standards scores
  # List standards applied to a specific resource  Scoped OAuth requires: &#x60;standards.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param id Id of the resource to apply the standards.
  # @param resource_type 
  # @param [Hash] opts the optional parameters
  # @return [StandardApplied]
  describe 'list_resource_standards test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_resource_standards_many_services
  # List resources&#39; standards scores
  # List standards applied to a set of resources  Scoped OAuth requires: &#x60;standards.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param ids Ids of resources to apply the standards. Maximum of 100 items
  # @param resource_type 
  # @param [Hash] opts the optional parameters
  # @return [ListResourceStandardsManyServices200Response]
  describe 'list_resource_standards_many_services test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_standards
  # List Standards
  # Get all standards of an account.  Scoped OAuth requires: &#x60;standards.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :active 
  # @option opts [String] :resource_type 
  # @return [ListStandards200Response]
  describe 'list_standards test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_standard
  # Update a standard
  # Updates a standard  Scoped OAuth requires: &#x60;standards.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param id Id of the standard
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateStandardRequest] :update_standard_request 
  # @return [Standard]
  describe 'update_standard test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
