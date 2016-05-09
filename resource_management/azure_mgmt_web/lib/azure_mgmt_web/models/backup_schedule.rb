# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Description of a backup schedule. Describes how often should be the
    # backup performed and what should be the retention policy.
    #
    class BackupSchedule

      include MsRestAzure

      # @return [Integer] How often should be the backup executed (e.g. for
      # weekly backup, this should be set to 7 and FrequencyUnit should be
      # set to Day)
      attr_accessor :frequency_interval

      # @return [FrequencyUnit] How often should be the backup executed (e.g.
      # for weekly backup, this should be set to Day and FrequencyInterval
      # should be set to 7). Possible values include: 'Day', 'Hour'
      attr_accessor :frequency_unit

      # @return [Boolean] True if the retention policy should always keep at
      # least one backup in the storage account, regardless how old it is;
      # false otherwise.
      attr_accessor :keep_at_least_one_backup

      # @return [Integer] After how many days backups should be deleted
      attr_accessor :retention_period_in_days

      # @return [DateTime] When the schedule should start working
      attr_accessor :start_time

      # @return [DateTime] The last time when this schedule was triggered
      attr_accessor :last_execution_time

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        fail MsRest::ValidationError, 'property frequency_unit is nil' if @frequency_unit.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.frequency_unit
        output_object['frequencyUnit'] = serialized_property unless serialized_property.nil?

        serialized_property = object.frequency_interval
        output_object['frequencyInterval'] = serialized_property unless serialized_property.nil?

        serialized_property = object.keep_at_least_one_backup
        output_object['keepAtLeastOneBackup'] = serialized_property unless serialized_property.nil?

        serialized_property = object.retention_period_in_days
        output_object['retentionPeriodInDays'] = serialized_property unless serialized_property.nil?

        serialized_property = object.start_time
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['startTime'] = serialized_property unless serialized_property.nil?

        serialized_property = object.last_execution_time
        serialized_property = serialized_property.new_offset(0).strftime('%FT%TZ')
        output_object['lastExecutionTime'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [BackupSchedule] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = BackupSchedule.new

        deserialized_property = object['frequencyUnit']
        if (!deserialized_property.nil? && !deserialized_property.empty?)
          enum_is_valid = FrequencyUnit.constants.any? { |e| FrequencyUnit.const_get(e).to_s.downcase == deserialized_property.downcase }
          warn 'Enum FrequencyUnit does not contain ' + deserialized_property.downcase + ', but was received from the server.' unless enum_is_valid
        end
        output_object.frequency_unit = deserialized_property

        deserialized_property = object['frequencyInterval']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.frequency_interval = deserialized_property

        deserialized_property = object['keepAtLeastOneBackup']
        output_object.keep_at_least_one_backup = deserialized_property

        deserialized_property = object['retentionPeriodInDays']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.retention_period_in_days = deserialized_property

        deserialized_property = object['startTime']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.start_time = deserialized_property

        deserialized_property = object['lastExecutionTime']
        deserialized_property = DateTime.parse(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.last_execution_time = deserialized_property

        output_object
      end
    end
  end
end
