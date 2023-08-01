=begin
#OneSignal

#A powerful way to send personalized messages at scale and build effective customer engagement strategies. Learn more at onesignal.com

The version of the OpenAPI document: 1.2.2
Contact: devrel@onesignal.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.0.0-SNAPSHOT

=end

require 'date'
require 'time'

module OneSignal
  class App
    attr_accessor :id

    # The name of your app, as displayed on your apps list on the dashboard.  This can be renamed.
    attr_accessor :name

    attr_accessor :players

    attr_accessor :messageable_players

    attr_accessor :updated_at

    attr_accessor :created_at

    # Android: Your Google Project number.  Also known as Sender ID.
    attr_accessor :android_gcm_sender_id

    # Android: Your Google Push Messaging Auth Key
    attr_accessor :gcm_key

    # Chrome (All Browsers except Safari) (Recommended): The URL to your website.  This field is required if you wish to enable web push and specify other web push parameters.
    attr_accessor :chrome_web_origin

    # Not for web push.  Your Google Push Messaging Auth Key if you use Chrome Apps / Extensions.
    attr_accessor :chrome_key

    # Chrome (All Browsers except Safari): Your default notification icon. Should be 256x256 pixels, min 80x80.
    attr_accessor :chrome_web_default_notification_icon

    # Chrome (All Browsers except Safari): A subdomain of your choice in order to support Web Push on non-HTTPS websites. This field must be set in order for the chrome_web_gcm_sender_id property to be processed.
    attr_accessor :chrome_web_sub_domain

    # iOS: Either sandbox or production
    attr_accessor :apns_env

    # iOS: Your apple push notification p12 certificate file, converted to a string and Base64 encoded.
    attr_accessor :apns_p12

    # iOS: Required if using p12 certificate.  Password for the apns_p12 file.
    attr_accessor :apns_p12_password

    attr_accessor :apns_certificates

    attr_accessor :safari_apns_certificates

    # Safari: Your apple push notification p12 certificate file for Safari Push Notifications, converted to a string and Base64 encoded.
    attr_accessor :safari_apns_p12

    # Safari: Password for safari_apns_p12 file
    attr_accessor :safari_apns_p12_password

    # iOS: Required if using p8. Unique identifier for the p8 authentication key.
    attr_accessor :apns_key_id

    # iOS: Required if using p8. Team ID generated by Apple for your developer account.
    attr_accessor :apns_team_id

    # iOS: Required if using p8. Bundle ID for your app in the Apple ecosystem.
    attr_accessor :apns_bundle_id

    # iOS: Required if using p8. Base64 encoded p8 key
    attr_accessor :apns_p8

    # Safari (Recommended): The hostname to your website including http(s)://
    attr_accessor :safari_site_origin

    attr_accessor :safari_push_id

    attr_accessor :safari_icon_16_16

    attr_accessor :safari_icon_32_32

    attr_accessor :safari_icon_64_64

    attr_accessor :safari_icon_128_128

    # Safari: A url for a 256x256 png notification icon. This is the only Safari icon URL you need to provide.
    attr_accessor :safari_icon_256_256

    # All Browsers (Recommended): The Site Name. Requires both chrome_web_origin and safari_site_origin to be set to add or update it.
    attr_accessor :site_name

    attr_accessor :basic_auth_key

    # The Id of the Organization you would like to add this app to.
    attr_accessor :organization_id

    # iOS: Notification data (additional data) values will be added to the root of the apns payload when sent to the device.  Ignore if you're not using any other plugins, or not using OneSignal SDK methods to read the payload.
    attr_accessor :additional_data_is_root_payload

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
        :'name' => :'name',
        :'players' => :'players',
        :'messageable_players' => :'messageable_players',
        :'updated_at' => :'updated_at',
        :'created_at' => :'created_at',
        :'android_gcm_sender_id' => :'android_gcm_sender_id',
        :'gcm_key' => :'gcm_key',
        :'chrome_web_origin' => :'chrome_web_origin',
        :'chrome_key' => :'chrome_key',
        :'chrome_web_default_notification_icon' => :'chrome_web_default_notification_icon',
        :'chrome_web_sub_domain' => :'chrome_web_sub_domain',
        :'apns_env' => :'apns_env',
        :'apns_p12' => :'apns_p12',
        :'apns_p12_password' => :'apns_p12_password',
        :'apns_certificates' => :'apns_certificates',
        :'safari_apns_certificates' => :'safari_apns_certificates',
        :'safari_apns_p12' => :'safari_apns_p12',
        :'safari_apns_p12_password' => :'safari_apns_p12_password',
        :'apns_key_id' => :'apns_key_id',
        :'apns_team_id' => :'apns_team_id',
        :'apns_bundle_id' => :'apns_bundle_id',
        :'apns_p8' => :'apns_p8',
        :'safari_site_origin' => :'safari_site_origin',
        :'safari_push_id' => :'safari_push_id',
        :'safari_icon_16_16' => :'safari_icon_16_16',
        :'safari_icon_32_32' => :'safari_icon_32_32',
        :'safari_icon_64_64' => :'safari_icon_64_64',
        :'safari_icon_128_128' => :'safari_icon_128_128',
        :'safari_icon_256_256' => :'safari_icon_256_256',
        :'site_name' => :'site_name',
        :'basic_auth_key' => :'basic_auth_key',
        :'organization_id' => :'organization_id',
        :'additional_data_is_root_payload' => :'additional_data_is_root_payload'
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
        :'name' => :'String',
        :'players' => :'Integer',
        :'messageable_players' => :'Integer',
        :'updated_at' => :'Time',
        :'created_at' => :'Time',
        :'android_gcm_sender_id' => :'String',
        :'gcm_key' => :'String',
        :'chrome_web_origin' => :'String',
        :'chrome_key' => :'String',
        :'chrome_web_default_notification_icon' => :'String',
        :'chrome_web_sub_domain' => :'String',
        :'apns_env' => :'String',
        :'apns_p12' => :'String',
        :'apns_p12_password' => :'String',
        :'apns_certificates' => :'String',
        :'safari_apns_certificates' => :'String',
        :'safari_apns_p12' => :'String',
        :'safari_apns_p12_password' => :'String',
        :'apns_key_id' => :'String',
        :'apns_team_id' => :'String',
        :'apns_bundle_id' => :'String',
        :'apns_p8' => :'String',
        :'safari_site_origin' => :'String',
        :'safari_push_id' => :'String',
        :'safari_icon_16_16' => :'String',
        :'safari_icon_32_32' => :'String',
        :'safari_icon_64_64' => :'String',
        :'safari_icon_128_128' => :'String',
        :'safari_icon_256_256' => :'String',
        :'site_name' => :'String',
        :'basic_auth_key' => :'String',
        :'organization_id' => :'String',
        :'additional_data_is_root_payload' => :'Boolean'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'gcm_key',
        :'chrome_web_origin',
        :'chrome_key',
        :'chrome_web_default_notification_icon',
        :'chrome_web_sub_domain',
        :'apns_env',
        :'apns_certificates',
        :'apns_key_id',
        :'apns_team_id',
        :'apns_bundle_id',
        :'apns_p8',
        :'safari_site_origin',
        :'safari_push_id',
        :'site_name',
        :'basic_auth_key',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OneSignal::App` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OneSignal::App`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'players')
        self.players = attributes[:'players']
      end

      if attributes.key?(:'messageable_players')
        self.messageable_players = attributes[:'messageable_players']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'android_gcm_sender_id')
        self.android_gcm_sender_id = attributes[:'android_gcm_sender_id']
      end

      if attributes.key?(:'gcm_key')
        self.gcm_key = attributes[:'gcm_key']
      end

      if attributes.key?(:'chrome_web_origin')
        self.chrome_web_origin = attributes[:'chrome_web_origin']
      end

      if attributes.key?(:'chrome_key')
        self.chrome_key = attributes[:'chrome_key']
      end

      if attributes.key?(:'chrome_web_default_notification_icon')
        self.chrome_web_default_notification_icon = attributes[:'chrome_web_default_notification_icon']
      end

      if attributes.key?(:'chrome_web_sub_domain')
        self.chrome_web_sub_domain = attributes[:'chrome_web_sub_domain']
      end

      if attributes.key?(:'apns_env')
        self.apns_env = attributes[:'apns_env']
      end

      if attributes.key?(:'apns_p12')
        self.apns_p12 = attributes[:'apns_p12']
      end

      if attributes.key?(:'apns_p12_password')
        self.apns_p12_password = attributes[:'apns_p12_password']
      end

      if attributes.key?(:'apns_certificates')
        self.apns_certificates = attributes[:'apns_certificates']
      end

      if attributes.key?(:'safari_apns_certificates')
        self.safari_apns_certificates = attributes[:'safari_apns_certificates']
      end

      if attributes.key?(:'safari_apns_p12')
        self.safari_apns_p12 = attributes[:'safari_apns_p12']
      end

      if attributes.key?(:'safari_apns_p12_password')
        self.safari_apns_p12_password = attributes[:'safari_apns_p12_password']
      end

      if attributes.key?(:'apns_key_id')
        self.apns_key_id = attributes[:'apns_key_id']
      end

      if attributes.key?(:'apns_team_id')
        self.apns_team_id = attributes[:'apns_team_id']
      end

      if attributes.key?(:'apns_bundle_id')
        self.apns_bundle_id = attributes[:'apns_bundle_id']
      end

      if attributes.key?(:'apns_p8')
        self.apns_p8 = attributes[:'apns_p8']
      end

      if attributes.key?(:'safari_site_origin')
        self.safari_site_origin = attributes[:'safari_site_origin']
      end

      if attributes.key?(:'safari_push_id')
        self.safari_push_id = attributes[:'safari_push_id']
      end

      if attributes.key?(:'safari_icon_16_16')
        self.safari_icon_16_16 = attributes[:'safari_icon_16_16']
      end

      if attributes.key?(:'safari_icon_32_32')
        self.safari_icon_32_32 = attributes[:'safari_icon_32_32']
      end

      if attributes.key?(:'safari_icon_64_64')
        self.safari_icon_64_64 = attributes[:'safari_icon_64_64']
      end

      if attributes.key?(:'safari_icon_128_128')
        self.safari_icon_128_128 = attributes[:'safari_icon_128_128']
      end

      if attributes.key?(:'safari_icon_256_256')
        self.safari_icon_256_256 = attributes[:'safari_icon_256_256']
      end

      if attributes.key?(:'site_name')
        self.site_name = attributes[:'site_name']
      end

      if attributes.key?(:'basic_auth_key')
        self.basic_auth_key = attributes[:'basic_auth_key']
      end

      if attributes.key?(:'organization_id')
        self.organization_id = attributes[:'organization_id']
      end

      if attributes.key?(:'additional_data_is_root_payload')
        self.additional_data_is_root_payload = attributes[:'additional_data_is_root_payload']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      apns_env_validator = EnumAttributeValidator.new('String', ["sandbox", "production"])
      return false unless apns_env_validator.valid?(@apns_env)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] apns_env Object to be assigned
    def apns_env=(apns_env)
      validator = EnumAttributeValidator.new('String', ["sandbox", "production"])
      unless validator.valid?(apns_env)
        fail ArgumentError, "invalid value for \"apns_env\", must be one of #{validator.allowable_values}."
      end
      @apns_env = apns_env
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          players == o.players &&
          messageable_players == o.messageable_players &&
          updated_at == o.updated_at &&
          created_at == o.created_at &&
          android_gcm_sender_id == o.android_gcm_sender_id &&
          gcm_key == o.gcm_key &&
          chrome_web_origin == o.chrome_web_origin &&
          chrome_key == o.chrome_key &&
          chrome_web_default_notification_icon == o.chrome_web_default_notification_icon &&
          chrome_web_sub_domain == o.chrome_web_sub_domain &&
          apns_env == o.apns_env &&
          apns_p12 == o.apns_p12 &&
          apns_p12_password == o.apns_p12_password &&
          apns_certificates == o.apns_certificates &&
          safari_apns_certificates == o.safari_apns_certificates &&
          safari_apns_p12 == o.safari_apns_p12 &&
          safari_apns_p12_password == o.safari_apns_p12_password &&
          apns_key_id == o.apns_key_id &&
          apns_team_id == o.apns_team_id &&
          apns_bundle_id == o.apns_bundle_id &&
          apns_p8 == o.apns_p8 &&
          safari_site_origin == o.safari_site_origin &&
          safari_push_id == o.safari_push_id &&
          safari_icon_16_16 == o.safari_icon_16_16 &&
          safari_icon_32_32 == o.safari_icon_32_32 &&
          safari_icon_64_64 == o.safari_icon_64_64 &&
          safari_icon_128_128 == o.safari_icon_128_128 &&
          safari_icon_256_256 == o.safari_icon_256_256 &&
          site_name == o.site_name &&
          basic_auth_key == o.basic_auth_key &&
          organization_id == o.organization_id &&
          additional_data_is_root_payload == o.additional_data_is_root_payload
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, name, players, messageable_players, updated_at, created_at, android_gcm_sender_id, gcm_key, chrome_web_origin, chrome_key, chrome_web_default_notification_icon, chrome_web_sub_domain, apns_env, apns_p12, apns_p12_password, apns_certificates, safari_apns_certificates, safari_apns_p12, safari_apns_p12_password, apns_key_id, apns_team_id, apns_bundle_id, apns_p8, safari_site_origin, safari_push_id, safari_icon_16_16, safari_icon_32_32, safari_icon_64_64, safari_icon_128_128, safari_icon_256_256, site_name, basic_auth_key, organization_id, additional_data_is_root_payload].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
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
        klass = OneSignal.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
