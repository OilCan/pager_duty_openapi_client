=begin
#PagerDuty API

#This document describes the PagerDuty REST APIs.  For guides and examples please visit our [Documentation.](https://developer.pagerduty.com/docs/get-started/getting-started/)  Our REST APIs are defined in OpenAPI v3.x. You can view the schema at [github.com/PagerDuty/api-schema](https://github.com/PagerDuty/api-schema).  Note that properties in some schemas have fields not shown by default such as `readOnly`, `format`, and `default`. Hover your cursor over the right column that looks like `optional+1` to see the full list of fields. 

The version of the OpenAPI document: 2.0.0
Contact: support@pagerduty.com
Generated by: https://openapi-generator.tech
Generator version: 7.6.0

=end

require 'date'
require 'time'

module OpenapiClient
  module OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractions
    class << self
      # List of class defined in anyOf (OpenAPI v3)
      def openapi_any_of
        [
          :'OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractionsAnyOf',
          :'OrchestrationUnroutedAllOfOrchestrationPathCatchAllActionsExtractionsAnyOf1'
        ]
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of anyOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        # Go through the list of anyOf items and attempt to identify the appropriate one.
        # Note:
        # - No advanced validation of types in some cases (e.g. "x: { type: string }" will happily match { x: 123 })
        #   due to the way the deserialization is made in the base_object template (it just casts without verifying).
        # - TODO: scalar values are de facto behaving as if they were nullable.
        # - TODO: logging when debugging is set.
        openapi_any_of.each do |klass|
          begin
            next if klass == :AnyType # "nullable: true"
            typed_data = find_and_cast_into_type(klass, data)
            return typed_data if typed_data
          rescue # rescue all errors so we keep iterating even if the current item lookup raises
          end
        end

        openapi_any_of.include?(:AnyType) ? data : nil
      end

      private

      SchemaMismatchError = Class.new(StandardError)

      # Note: 'File' is missing here because in the regular case we get the data _after_ a call to JSON.parse.
      def find_and_cast_into_type(klass, data)
        return if data.nil?

        case klass.to_s
        when 'Boolean'
          return data if data.instance_of?(TrueClass) || data.instance_of?(FalseClass)
        when 'Float'
          return data if data.instance_of?(Float)
        when 'Integer'
          return data if data.instance_of?(Integer)
        when 'Time'
          return Time.parse(data)
        when 'Date'
          return Date.parse(data)
        when 'String'
          return data if data.instance_of?(String)
        when 'Object' # "type: object"
          return data if data.instance_of?(Hash)
        when /\AArray<(?<sub_type>.+)>\z/ # "type: array"
          if data.instance_of?(Array)
            sub_type = Regexp.last_match[:sub_type]
            return data.map { |item| find_and_cast_into_type(sub_type, item) }
          end
        when /\AHash<String, (?<sub_type>.+)>\z/ # "type: object" with "additionalProperties: { ... }"
          if data.instance_of?(Hash) && data.keys.all? { |k| k.instance_of?(Symbol) || k.instance_of?(String) }
            sub_type = Regexp.last_match[:sub_type]
            return data.each_with_object({}) { |(k, v), hsh| hsh[k] = find_and_cast_into_type(sub_type, v) }
          end
        else # model
          const = OpenapiClient.const_get(klass)
          if const
            if const.respond_to?(:openapi_any_of) # nested anyOf model
              model = const.build(data)
              return model if model
            else
              # raise if data contains keys that are not known to the model
              raise if const.respond_to?(:acceptable_attributes) && !(data.keys - const.acceptable_attributes).empty?
              model = const.build_from_hash(data)
              return model if model
            end
          end
        end

        raise # if no match by now, raise
      rescue
        raise SchemaMismatchError, "#{data} doesn't match the #{klass} type"
      end
    end
  end

end
