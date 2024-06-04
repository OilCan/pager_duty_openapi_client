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

# Unit tests for OpenapiClient::LicensesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'LicensesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::LicensesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of LicensesApi' do
    it 'should create an instance of LicensesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::LicensesApi)
    end
  end

  # unit tests for list_license_allocations
  # List License Allocations
  # List the Licenses allocated to Users within your Account  Scoped OAuth requires: &#x60;licenses.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of results per page.
  # @option opts [Integer] :offset Offset to start pagination search results.
  # @return [ListLicenseAllocations200Response]
  describe 'list_license_allocations test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_licenses
  # List Licenses
  # List the Licenses associated with your Account  Scoped OAuth requires: &#x60;licenses.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @return [ListLicenses200Response]
  describe 'list_licenses test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
