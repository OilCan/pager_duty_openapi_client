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
  class ResponsePlay
    # The type of object being created.
    attr_accessor :type

    # The name of the response play.
    attr_accessor :name

    # The description of the response play.
    attr_accessor :description

    attr_accessor :team

    # An array containing the users and/or teams to be added as subscribers to any incident on which this response play is run.
    attr_accessor :subscribers

    # The content of the notification that will be sent to all incident subscribers upon the running of this response play. Note that this includes any users who may have already been subscribed to the incident prior to the running of this response play. If empty, no notifications will be sent.
    attr_accessor :subscribers_message

    # An array containing the users and/or escalation policies to be requested as responders to any incident on which this response play is run.
    attr_accessor :responders

    # The message body of the notification that will be sent to this response play's set of responders. If empty, a default response request notification will be sent.
    attr_accessor :responders_message

    # String representing how this response play is allowed to be run. Valid options are:   - `services`: This response play cannot be manually run by any users. It will run automatically for new incidents triggered on any services that are configured with this response play.   - `teams`: This response play can be run manually on an incident only by members of its configured team. This option can only be selected when the `team` property for this response play is not empty.   - `responders`: This response play can be run manually on an incident by any responders in this account.
    attr_accessor :runnability

    # The telephone number that will be set as the conference number for any incident on which this response play is run.
    attr_accessor :conference_number

    # The URL that will be set as the conference URL for any incident on which this response play is run.
    attr_accessor :conference_url

    # This field has three possible values and indicates how the response play was created.   - `none` : The response play had no conference_number or conference_url set at time of creation.   - `manual` : The response play had one or both of conference_number and conference_url set at time of creation.   - `zoom` : Customers with the Zoom-Integration Entitelment can use this value to dynamicly configure conference number and url for zoom
    attr_accessor :conference_type

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
        :'description' => :'description',
        :'team' => :'team',
        :'subscribers' => :'subscribers',
        :'subscribers_message' => :'subscribers_message',
        :'responders' => :'responders',
        :'responders_message' => :'responders_message',
        :'runnability' => :'runnability',
        :'conference_number' => :'conference_number',
        :'conference_url' => :'conference_url',
        :'conference_type' => :'conference_type'
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
        :'description' => :'String',
        :'team' => :'ResponsePlayAllOfTeam',
        :'subscribers' => :'Array<ResponsePlayAllOfSubscribers>',
        :'subscribers_message' => :'String',
        :'responders' => :'Array<ResponsePlayAllOfResponders>',
        :'responders_message' => :'String',
        :'runnability' => :'String',
        :'conference_number' => :'String',
        :'conference_url' => :'String',
        :'conference_type' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'description',
        :'subscribers',
        :'subscribers_message',
        :'responders_message',
        :'conference_number',
        :'conference_url',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `PagerDutyOpenapiClient::ResponsePlay` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `PagerDutyOpenapiClient::ResponsePlay`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'response_play'
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'team')
        self.team = attributes[:'team']
      end

      if attributes.key?(:'subscribers')
        if (value = attributes[:'subscribers']).is_a?(Array)
          self.subscribers = value
        end
      end

      if attributes.key?(:'subscribers_message')
        self.subscribers_message = attributes[:'subscribers_message']
      end

      if attributes.key?(:'responders')
        if (value = attributes[:'responders']).is_a?(Array)
          self.responders = value
        end
      end

      if attributes.key?(:'responders_message')
        self.responders_message = attributes[:'responders_message']
      end

      if attributes.key?(:'runnability')
        self.runnability = attributes[:'runnability']
      else
        self.runnability = 'services'
      end

      if attributes.key?(:'conference_number')
        self.conference_number = attributes[:'conference_number']
      end

      if attributes.key?(:'conference_url')
        self.conference_url = attributes[:'conference_url']
      end

      if attributes.key?(:'conference_type')
        self.conference_type = attributes[:'conference_type']
      else
        self.conference_type = 'none'
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if !@description.nil? && @description.to_s.length > 349
        invalid_properties.push('invalid value for "description", the character length must be smaller than or equal to 349.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      type_validator = EnumAttributeValidator.new('String', ["response_play"])
      return false unless type_validator.valid?(@type)
      return false if !@description.nil? && @description.to_s.length > 349
      runnability_validator = EnumAttributeValidator.new('String', ["services", "teams", "responders"])
      return false unless runnability_validator.valid?(@runnability)
      conference_type_validator = EnumAttributeValidator.new('String', ["none", "manual", "zoom"])
      return false unless conference_type_validator.valid?(@conference_type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["response_play"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.length > 349
        fail ArgumentError, 'invalid value for "description", the character length must be smaller than or equal to 349.'
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] runnability Object to be assigned
    def runnability=(runnability)
      validator = EnumAttributeValidator.new('String', ["services", "teams", "responders"])
      unless validator.valid?(runnability)
        fail ArgumentError, "invalid value for \"runnability\", must be one of #{validator.allowable_values}."
      end
      @runnability = runnability
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] conference_type Object to be assigned
    def conference_type=(conference_type)
      validator = EnumAttributeValidator.new('String', ["none", "manual", "zoom"])
      unless validator.valid?(conference_type)
        fail ArgumentError, "invalid value for \"conference_type\", must be one of #{validator.allowable_values}."
      end
      @conference_type = conference_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          type == o.type &&
          name == o.name &&
          description == o.description &&
          team == o.team &&
          subscribers == o.subscribers &&
          subscribers_message == o.subscribers_message &&
          responders == o.responders &&
          responders_message == o.responders_message &&
          runnability == o.runnability &&
          conference_number == o.conference_number &&
          conference_url == o.conference_url &&
          conference_type == o.conference_type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [type, name, description, team, subscribers, subscribers_message, responders, responders_message, runnability, conference_number, conference_url, conference_type].hash
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
