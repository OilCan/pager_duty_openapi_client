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

# Unit tests for PagerDutyOpenapiClient::AuditApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuditApi' do
  before do
    # run before each test
    @api_instance = PagerDutyOpenapiClient::AuditApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuditApi' do
    it 'should create an instance of AuditApi' do
      expect(@api_instance).to be_instance_of(PagerDutyOpenapiClient::AuditApi)
    end
  end

  # unit tests for list_audit_records
  # List audit records
  # List audit trail records matching provided query params or default criteria.  The returned records are sorted by the &#x60;execution_time&#x60; from newest to oldest.  See [&#x60;Cursor-based pagination&#x60;](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for instructions on how to paginate through the result set.  Only admins, account owners, or global API tokens on PagerDuty account [pricing plans](https://www.pagerduty.com/pricing) with the \&quot;Audit Trail\&quot; feature can access this endpoint.  For other role based access to audit records by resource ID, see the resource&#39;s API documentation.  For more information see the [Audit API Document](https://developer.pagerduty.com/docs/rest-api-v2/audit-records-api/).  Scoped OAuth requires: &#x60;audit_records.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The minimum of the &#x60;limit&#x60; parameter used in the request or the maximum request size of the API.
  # @option opts [String] :cursor Optional parameter used to request the \&quot;next\&quot; set of results from an API.  The value provided here is most commonly obtained from the &#x60;next_cursor&#x60; field of the previous request.  When no value is provided, the request starts at the beginning of the result set. 
  # @option opts [Time] :since The start of the date range over which you want to search. If not specified, defaults to &#x60;now() - 24 hours&#x60; (past 24 hours)
  # @option opts [Time] :_until The end of the date range over which you want to search. If not specified, defaults to &#x60;now()&#x60;. May not be more than 31 days after &#x60;since&#x60;.
  # @option opts [String] :root_resource_types Resource type filter for the root_resource.
  # @option opts [String] :actor_type Actor type filter.
  # @option opts [String] :actor_id Actor Id filter. Must be qualified by providing the &#x60;actor_type&#x60; param.
  # @option opts [String] :method_type Method type filter.
  # @option opts [String] :method_truncated_token Method truncated_token filter. Must be qualified by providing the &#x60;method_type&#x60; param.
  # @option opts [String] :actions Action filter
  # @return [AuditRecordResponseSchema]
  describe 'list_audit_records test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
