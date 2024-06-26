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

module PagerDutyOpenapiClient
  class GetAnalyticsResponderIncidentsRequest
    attr_accessor :filters

    # A cursor to indicate the reference point that the results should follow
    attr_accessor :starting_after

    # A cursor to indicate the reference point that the results should precede
    attr_accessor :ending_before

    # The order in which to display the results; asc for ascending, desc for descending. Defaults to `desc`.
    attr_accessor :order

    # The column to use for ordering the results. Defaults to `incident_created_at`.
    attr_accessor :order_by

    # Number of results to include in each batch. Limits between 1 to 1000 are accepted.
    attr_accessor :limit

    # The time zone to use for the results.
    attr_accessor :time_zone

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'filters' => :'filters',
        :'starting_after' => :'starting_after',
        :'ending_before' => :'ending_before',
        :'order' => :'order',
        :'order_by' => :'order_by',
        :'limit' => :'limit',
        :'time_zone' => :'time_zone'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'filters' => :'GetAnalyticsIncidentsRequestFilters',
        :'starting_after' => :'String',
        :'ending_before' => :'String',
        :'order' => :'String',
        :'order_by' => :'String',
        :'limit' => :'Integer',
        :'time_zone' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `PagerDutyOpenapiClient::GetAnalyticsResponderIncidentsRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PagerDutyOpenapiClient::GetAnalyticsResponderIncidentsRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'filters')
        self.filters = attributes[:'filters']
      end

      if attributes.key?(:'starting_after')
        self.starting_after = attributes[:'starting_after']
      end

      if attributes.key?(:'ending_before')
        self.ending_before = attributes[:'ending_before']
      end

      if attributes.key?(:'order')
        self.order = attributes[:'order']
      end

      if attributes.key?(:'order_by')
        self.order_by = attributes[:'order_by']
      end

      if attributes.key?(:'limit')
        self.limit = attributes[:'limit']
      end

      if attributes.key?(:'time_zone')
        self.time_zone = attributes[:'time_zone']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@limit.nil? && @limit > 1000
        invalid_properties.push('invalid value for "limit", must be smaller than or equal to 1000.')
      end

      if !@limit.nil? && @limit <= 0
        invalid_properties.push('invalid value for "limit", must be greater than 0.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      order_validator = EnumAttributeValidator.new('String', ["asc", "desc"])
      return false unless order_validator.valid?(@order)
      order_by_validator = EnumAttributeValidator.new('String', ["incident_created_at"])
      return false unless order_by_validator.valid?(@order_by)
      return false if !@limit.nil? && @limit > 1000
      return false if !@limit.nil? && @limit <= 0
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order Object to be assigned
    def order=(order)
      validator = EnumAttributeValidator.new('String', ["asc", "desc"])
      unless validator.valid?(order)
        fail ArgumentError, "invalid value for \"order\", must be one of #{validator.allowable_values}."
      end
      @order = order
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] order_by Object to be assigned
    def order_by=(order_by)
      validator = EnumAttributeValidator.new('String', ["incident_created_at"])
      unless validator.valid?(order_by)
        fail ArgumentError, "invalid value for \"order_by\", must be one of #{validator.allowable_values}."
      end
      @order_by = order_by
    end

    # Custom attribute writer method with validation
    # @param [Object] limit Value to be assigned
    def limit=(limit)
      if limit.nil?
        fail ArgumentError, 'limit cannot be nil'
      end

      if limit > 1000
        fail ArgumentError, 'invalid value for "limit", must be smaller than or equal to 1000.'
      end

      if limit <= 0
        fail ArgumentError, 'invalid value for "limit", must be greater than 0.'
      end

      @limit = limit
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          filters == o.filters &&
          starting_after == o.starting_after &&
          ending_before == o.ending_before &&
          order == o.order &&
          order_by == o.order_by &&
          limit == o.limit &&
          time_zone == o.time_zone
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [filters, starting_after, ending_before, order, order_by, limit, time_zone].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = PagerDutyOpenapiClient.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
