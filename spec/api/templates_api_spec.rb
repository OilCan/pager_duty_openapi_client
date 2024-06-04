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

# Unit tests for OpenapiClient::TemplatesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'TemplatesApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::TemplatesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TemplatesApi' do
    it 'should create an instance of TemplatesApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::TemplatesApi)
    end
  end

  # unit tests for create_template
  # Create a template
  # Create a new template  Scoped OAuth requires: &#x60;templates.write&#x60; 
  # @param create_template_request 
  # @param [Hash] opts the optional parameters
  # @return [CreateTemplate201Response]
  describe 'create_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_template
  # Delete a template
  # Delete a specific of templates on the account  Scoped OAuth requires: &#x60;templates.write&#x60; 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_template
  # Get a template
  # Get a single template on the account  Scoped OAuth requires: &#x60;templates.read&#x60; 
  # @param id The ID of the resource.
  # @param [Hash] opts the optional parameters
  # @return [CreateTemplate201Response]
  describe 'get_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_template_fields
  # List template fields
  # Get a list of fields that can be used on the account templates.  Scoped OAuth requires: &#x60;templates.read&#x60; 
  # @param accept The &#x60;Accept&#x60; header is used as a versioning header.
  # @param content_type 
  # @param [Hash] opts the optional parameters
  # @return [GetTemplateFields200Response]
  describe 'get_template_fields test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_templates
  # List templates
  # Get a list of all the template on an account  Scoped OAuth requires: &#x60;templates.read&#x60; 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit The number of results per page.
  # @option opts [Integer] :offset Offset to start pagination search results.
  # @option opts [Boolean] :total By default the &#x60;total&#x60; field in pagination responses is set to &#x60;null&#x60; to provide the fastest possible response times. Set &#x60;total&#x60; to &#x60;true&#x60; for this field to be populated.  See our [Pagination Docs](https://developer.pagerduty.com/docs/rest-api-v2/pagination/) for more information. 
  # @option opts [String] :query Template name or description to search
  # @option opts [String] :template_type Filters templates by type.
  # @option opts [String] :sort_by Used to specify both the field you wish to sort the results on (name/created_at), as well as the direction (asc/desc) of the results. The sort_by field and direction should be separated by a colon. Sort direction defaults to ascending.
  # @return [GetTemplates200Response]
  describe 'get_templates test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for render_template
  # Render a template
  # Render a template. This endpoint has a variable request body depending on the template type. For the &#x60;status_update&#x60; template type, the caller will provide the incident id, and a status update message.  Scoped OAuth requires: &#x60;templates.read&#x60; 
  # @param id The ID of the resource.
  # @param render_template_request 
  # @param [Hash] opts the optional parameters
  # @return [RenderedTemplate]
  describe 'render_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_template
  # Update a template
  # Update an existing template  Scoped OAuth requires: &#x60;templates.write&#x60; 
  # @param id The ID of the resource.
  # @param create_template_request 
  # @param [Hash] opts the optional parameters
  # @return [CreateTemplate201Response]
  describe 'update_template test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
