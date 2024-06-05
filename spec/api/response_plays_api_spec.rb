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

# Unit tests for PagerDutyOpenapiClient::ResponsePlaysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ResponsePlaysApi' do
  before do
    # run before each test
    @api_instance = PagerDutyOpenapiClient::ResponsePlaysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ResponsePlaysApi' do
    it 'should create an instance of ResponsePlaysApi' do
      expect(@api_instance).to be_instance_of(PagerDutyOpenapiClient::ResponsePlaysApi)
    end
  end

  # unit tests for create_response_play
  # Create a Response Play
  # Creates a new Response Plays.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: &#x60;response_plays.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param from The email address of a valid user associated with the account making the request.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateResponsePlayRequest] :create_response_play_request The Response Play to be created.
  # @return [CreateResponsePlay201Response]
  describe 'create_response_play test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_response_play
  # Delete a Response Play
  # Delete an existing Response Play. Once the Response Play is deleted, the action cannot be undone.  WARNING: When the Response Play is deleted, it is also removed from any Services that were using it.  Response Plays allow you to create packages of Incident Actions that can be applied to an Incident.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: &#x60;response_plays.write&#x60; 
  # @param id The ID of the resource.
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param from The email address of a valid user associated with the account making the request.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_response_play test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_response_play
  # Get a Response Play
  # Get details about an existing Response Play.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  When using a Global API token, the &#x60;From&#x60; header is required. Scoped OAuth requires: &#x60;response_plays.read&#x60; 
  # @param id The ID of the resource.
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :from The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
  # @return [CreateResponsePlay201Response]
  describe 'get_response_play test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_response_plays
  # List Response Plays
  # List all of the existing Response Plays.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  When using a Global API token, the &#x60;From&#x60; header is required.  Scoped OAuth requires: &#x60;response_plays.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :query Filters the result, showing only the records whose name matches the query.
  # @option opts [Boolean] :filter_for_manual_run When this parameter is present, only those Response Plays that can be run manually will be returned.
  # @option opts [String] :from The email address of a valid user associated with the account making the request. This is optional, and is only used for change tracking.
  # @return [ListResponsePlays200Response]
  describe 'list_response_plays test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for run_response_play
  # Run a response play
  # Run a specified response play on a given incident.  Response Plays are a package of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: &#x60;response_plays.write&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param response_play_id The response play ID of the response play associated with the request.
  # @param from The email address of a valid user associated with the account making the request.
  # @param [Hash] opts the optional parameters
  # @option opts [MergeIncidents200Response] :merge_incidents200_response 
  # @return [RunResponsePlay200Response]
  describe 'run_response_play test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_response_play
  # Update a Response Play
  # Updates an existing Response Play.  Response Plays allow you to create packages of Incident Actions that can be applied during an Incident&#39;s life cycle.  For more information see the [API Concepts Document](../../api-reference/ZG9jOjI3NDc5Nzc-api-concepts#response-plays)  Scoped OAuth requires: &#x60;response_plays.write&#x60; 
  # @param id The ID of the resource.
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param from The email address of a valid user associated with the account making the request.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateResponsePlayRequest] :create_response_play_request The Response Play to be updated.
  # @return [CreateResponsePlay201Response]
  describe 'update_response_play test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
