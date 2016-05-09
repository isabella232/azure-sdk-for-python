# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require 'azure_mgmt_locks/module_definition'
require 'ms_rest_azure'

module Azure::ARM::Locks
  autoload :ManagementLocks,                                    'azure_mgmt_locks/management_locks.rb'
  autoload :LockManagementClient,                               'azure_mgmt_locks/lock_management_client.rb'

  module Models
    autoload :DeploymentExtendedFilter,                           'azure_mgmt_locks/models/deployment_extended_filter.rb'
    autoload :GenericResourceFilter,                              'azure_mgmt_locks/models/generic_resource_filter.rb'
    autoload :ResourceGroupFilter,                                'azure_mgmt_locks/models/resource_group_filter.rb'
    autoload :ManagementLockProperties,                           'azure_mgmt_locks/models/management_lock_properties.rb'
    autoload :ManagementLockObject,                               'azure_mgmt_locks/models/management_lock_object.rb'
    autoload :ManagementLockListResult,                           'azure_mgmt_locks/models/management_lock_list_result.rb'
    autoload :LockLevel,                                          'azure_mgmt_locks/models/lock_level.rb'
  end
end
