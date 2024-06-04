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
  class Integration
    attr_accessor :type

    # The name of this integration.
    attr_accessor :name

    attr_accessor :service

    # The date/time when this integration was created.
    attr_accessor :created_at

    attr_accessor :vendor

    # Specify for generic_email_inbound_integration. Must be set to an email address @your-subdomain.pagerduty.com
    attr_accessor :integration_email

    # Specify for generic_email_inbound_integration
    attr_accessor :email_incident_creation

    # Specify for generic_email_inbound_integration. May override email_incident_creation
    attr_accessor :email_filter_mode

    # Specify for generic_email_inbound_integration.
    attr_accessor :email_parsers

    # Specify for generic_email_inbound_integration.
    attr_accessor :email_parsing_fallback

    # Specify for generic_email_inbound_integration.
    attr_accessor :email_filters

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
        :'type' => :'type',
        :'name' => :'name',
        :'service' => :'service',
        :'created_at' => :'created_at',
        :'vendor' => :'vendor',
        :'integration_email' => :'integration_email',
        :'email_incident_creation' => :'email_incident_creation',
        :'email_filter_mode' => :'email_filter_mode',
        :'email_parsers' => :'email_parsers',
        :'email_parsing_fallback' => :'email_parsing_fallback',
        :'email_filters' => :'email_filters'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'type' => :'String',
        :'name' => :'String',
        :'service' => :'ServiceReference',
        :'created_at' => :'Time',
        :'vendor' => :'VendorReference',
        :'integration_email' => :'String',
        :'email_incident_creation' => :'String',
        :'email_filter_mode' => :'String',
        :'email_parsers' => :'Array<EmailParser>',
        :'email_parsing_fallback' => :'String',
        :'email_filters' => :'Array<IntegrationAllOfEmailFilters>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :'Model0'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Integration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Integration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.key?(:'integration_email')
        self.integration_email = attributes[:'integration_email']
      end

      if attributes.key?(:'email_incident_creation')
        self.email_incident_creation = attributes[:'email_incident_creation']
      end

      if attributes.key?(:'email_filter_mode')
        self.email_filter_mode = attributes[:'email_filter_mode']
      end

      if attributes.key?(:'email_parsers')
        if (value = attributes[:'email_parsers']).is_a?(Array)
          self.email_parsers = value
        end
      end

      if attributes.key?(:'email_parsing_fallback')
        self.email_parsing_fallback = attributes[:'email_parsing_fallback']
      end

      if attributes.key?(:'email_filters')
        if (value = attributes[:'email_filters']).is_a?(Array)
          self.email_filters = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@email_parsers.nil? && @email_parsers.length < 1
        invalid_properties.push('invalid value for "email_parsers", number of items must be greater than or equal to 1.')
      end

      if !@email_filters.nil? && @email_filters.length < 1
        invalid_properties.push('invalid value for "email_filters", number of items must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      type_validator = EnumAttributeValidator.new('String', ["aws_cloudwatch_inbound_integration", "cloudkick_inbound_integration", "event_transformer_api_inbound_integration", "generic_email_inbound_integration", "generic_events_api_inbound_integration", "keynote_inbound_integration", "nagios_inbound_integration", "pingdom_inbound_integration", "sql_monitor_inbound_integration", "events_api_v2_inbound_integration"])
      return false unless type_validator.valid?(@type)
      email_incident_creation_validator = EnumAttributeValidator.new('String', ["on_new_email", "on_new_email_subject", "only_if_no_open_incidents", "use_rules"])
      return false unless email_incident_creation_validator.valid?(@email_incident_creation)
      email_filter_mode_validator = EnumAttributeValidator.new('String', ["all-email", "or-rules-email", "and-rules-email"])
      return false unless email_filter_mode_validator.valid?(@email_filter_mode)
      return false if !@email_parsers.nil? && @email_parsers.length < 1
      email_parsing_fallback_validator = EnumAttributeValidator.new('String', ["open_new_incident", "discard"])
      return false unless email_parsing_fallback_validator.valid?(@email_parsing_fallback)
      return false if !@email_filters.nil? && @email_filters.length < 1
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["aws_cloudwatch_inbound_integration", "cloudkick_inbound_integration", "event_transformer_api_inbound_integration", "generic_email_inbound_integration", "generic_events_api_inbound_integration", "keynote_inbound_integration", "nagios_inbound_integration", "pingdom_inbound_integration", "sql_monitor_inbound_integration", "events_api_v2_inbound_integration"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_incident_creation Object to be assigned
    def email_incident_creation=(email_incident_creation)
      validator = EnumAttributeValidator.new('String', ["on_new_email", "on_new_email_subject", "only_if_no_open_incidents", "use_rules"])
      unless validator.valid?(email_incident_creation)
        fail ArgumentError, "invalid value for \"email_incident_creation\", must be one of #{validator.allowable_values}."
      end
      @email_incident_creation = email_incident_creation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_filter_mode Object to be assigned
    def email_filter_mode=(email_filter_mode)
      validator = EnumAttributeValidator.new('String', ["all-email", "or-rules-email", "and-rules-email"])
      unless validator.valid?(email_filter_mode)
        fail ArgumentError, "invalid value for \"email_filter_mode\", must be one of #{validator.allowable_values}."
      end
      @email_filter_mode = email_filter_mode
    end

    # Custom attribute writer method with validation
    # @param [Object] email_parsers Value to be assigned
    def email_parsers=(email_parsers)
      if email_parsers.nil?
        fail ArgumentError, 'email_parsers cannot be nil'
      end

      if email_parsers.length < 1
        fail ArgumentError, 'invalid value for "email_parsers", number of items must be greater than or equal to 1.'
      end

      @email_parsers = email_parsers
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_parsing_fallback Object to be assigned
    def email_parsing_fallback=(email_parsing_fallback)
      validator = EnumAttributeValidator.new('String', ["open_new_incident", "discard"])
      unless validator.valid?(email_parsing_fallback)
        fail ArgumentError, "invalid value for \"email_parsing_fallback\", must be one of #{validator.allowable_values}."
      end
      @email_parsing_fallback = email_parsing_fallback
    end

    # Custom attribute writer method with validation
    # @param [Object] email_filters Value to be assigned
    def email_filters=(email_filters)
      if email_filters.nil?
        fail ArgumentError, 'email_filters cannot be nil'
      end

      if email_filters.length < 1
        fail ArgumentError, 'invalid value for "email_filters", number of items must be greater than or equal to 1.'
      end

      @email_filters = email_filters
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          name == o.name &&
          service == o.service &&
          created_at == o.created_at &&
          vendor == o.vendor &&
          integration_email == o.integration_email &&
          email_incident_creation == o.email_incident_creation &&
          email_filter_mode == o.email_filter_mode &&
          email_parsers == o.email_parsers &&
          email_parsing_fallback == o.email_parsing_fallback &&
          email_filters == o.email_filters
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, name, service, created_at, vendor, integration_email, email_incident_creation, email_filter_mode, email_parsers, email_parsing_fallback, email_filters].hash
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
