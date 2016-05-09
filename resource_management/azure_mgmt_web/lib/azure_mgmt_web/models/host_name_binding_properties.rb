# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Model object.
    #
    class HostNameBindingProperties

      include MsRestAzure

      # @return [String] Hostname
      attr_accessor :name

      # @return [String] Web app name
      attr_accessor :site_name

      # @return [String] Fully qualified ARM domain resource URI
      attr_accessor :domain_id

      # @return [String] Azure resource name
      attr_accessor :azure_resource_name

      # @return [AzureResourceType] Azure resource type. Possible values
      # include: 'Website', 'TrafficManager'
      attr_accessor :azure_resource_type

      # @return [CustomHostNameDnsRecordType] Custom DNS record type. Possible
      # values include: 'CName', 'A'
      attr_accessor :custom_host_name_dns_record_type

      # @return [HostNameType] Host name type. Possible values include:
      # 'Verified', 'Managed'
      attr_accessor :host_name_type

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.name
        output_object['name'] = serialized_property unless serialized_property.nil?

        serialized_property = object.site_name
        output_object['siteName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.domain_id
        output_object['domainId'] = serialized_property unless serialized_property.nil?

        serialized_property = object.azure_resource_name
        output_object['azureResourceName'] = serialized_property unless serialized_property.nil?

        serialized_property = object.azure_resource_type
        output_object['azureResourceType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.custom_host_name_dns_record_type
        output_object['customHostNameDnsRecordType'] = serialized_property unless serialized_property.nil?

        serialized_property = object.host_name_type
        output_object['hostNameType'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [HostNameBindingProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = HostNameBindingProperties.new

        deserialized_property = object['name']
        output_object.name = deserialized_property

        deserialized_property = object['siteName']
        output_object.site_name = deserialized_property

        deserialized_property = object['domainId']
        output_object.domain_id = deserialized_property

        deserialized_property = object['azureResourceName']
        output_object.azure_resource_name = deserialized_property

        deserialized_property = object['azureResourceType']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = AzureResourceType.constants.any? { |e| AzureResourceType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum AzureResourceType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.azure_resource_type = deserialized_property

        deserialized_property = object['customHostNameDnsRecordType']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = CustomHostNameDnsRecordType.constants.any? { |e| CustomHostNameDnsRecordType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum CustomHostNameDnsRecordType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.custom_host_name_dns_record_type = deserialized_property

        deserialized_property = object['hostNameType']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = HostNameType.constants.any? { |e| HostNameType.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum HostNameType does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.host_name_type = deserialized_property

        output_object
      end
    end
  end
end
