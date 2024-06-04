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
  class EscalationRule
    attr_accessor :id

    # The number of minutes before an unacknowledged incident escalates away from this rule.
    attr_accessor :escalation_delay_in_minutes

    # The targets an incident should be assigned to upon reaching this rule.
    attr_accessor :targets

    # The strategy used to assign the escalation rule to an incident.
    attr_accessor :escalation_rule_assignment_strategy

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
        :'id' => :'id',
        :'escalation_delay_in_minutes' => :'escalation_delay_in_minutes',
        :'targets' => :'targets',
        :'escalation_rule_assignment_strategy' => :'escalation_rule_assignment_strategy'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'escalation_delay_in_minutes' => :'Integer',
        :'targets' => :'Array<EscalationTargetReference>',
        :'escalation_rule_assignment_strategy' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::EscalationRule` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::EscalationRule`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'escalation_delay_in_minutes')
        self.escalation_delay_in_minutes = attributes[:'escalation_delay_in_minutes']
      else
        self.escalation_delay_in_minutes = nil
      end

      if attributes.key?(:'targets')
        if (value = attributes[:'targets']).is_a?(Array)
          self.targets = value
        end
      else
        self.targets = nil
      end

      if attributes.key?(:'escalation_rule_assignment_strategy')
        self.escalation_rule_assignment_strategy = attributes[:'escalation_rule_assignment_strategy']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @escalation_delay_in_minutes.nil?
        invalid_properties.push('invalid value for "escalation_delay_in_minutes", escalation_delay_in_minutes cannot be nil.')
      end

      if @targets.nil?
        invalid_properties.push('invalid value for "targets", targets cannot be nil.')
      end

      if @targets.length > 10
        invalid_properties.push('invalid value for "targets", number of items must be less than or equal to 10.')
      end

      if @targets.length < 1
        invalid_properties.push('invalid value for "targets", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @escalation_delay_in_minutes.nil?
      return false if @targets.nil?
      return false if @targets.length > 10
      return false if @targets.length < 1
      escalation_rule_assignment_strategy_validator = EnumAttributeValidator.new('String', ["round_robin", "assign_to_everyone"])
      return false unless escalation_rule_assignment_strategy_validator.valid?(@escalation_rule_assignment_strategy)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] targets Value to be assigned
    def targets=(targets)
      if targets.nil?
        fail ArgumentError, 'targets cannot be nil'
      end

      if targets.length > 10
        fail ArgumentError, 'invalid value for "targets", number of items must be less than or equal to 10.'
      end

      if targets.length < 1
        fail ArgumentError, 'invalid value for "targets", number of items must be greater than or equal to 1.'
      end

      @targets = targets
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] escalation_rule_assignment_strategy Object to be assigned
    def escalation_rule_assignment_strategy=(escalation_rule_assignment_strategy)
      validator = EnumAttributeValidator.new('String', ["round_robin", "assign_to_everyone"])
      unless validator.valid?(escalation_rule_assignment_strategy)
        fail ArgumentError, "invalid value for \"escalation_rule_assignment_strategy\", must be one of #{validator.allowable_values}."
      end
      @escalation_rule_assignment_strategy = escalation_rule_assignment_strategy
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          escalation_delay_in_minutes == o.escalation_delay_in_minutes &&
          targets == o.targets &&
          escalation_rule_assignment_strategy == o.escalation_rule_assignment_strategy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, escalation_delay_in_minutes, targets, escalation_rule_assignment_strategy].hash
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
        klass = OpenapiClient.const_get(type)
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
