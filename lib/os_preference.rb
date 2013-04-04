require "os_preference/engine"
require 'deface'

module OsPreference
end

module ActiveSupport::Dependencies

  class << self
    def load_missing_constant_with_hooks(from_mod, constant_name)
      ret = load_missing_constant_without_hooks(from_mod, constant_name)
      if ret.name == "HostsAndHostgroupsHelper"
        unless ret.ancestors.include? OsPreference::HostsAndHostgroupsHelper
          ret.send(:include, OsPreference::HostsAndHostgroupsHelper)
        end
      end
      return ret
    end

    alias_method_chain :load_missing_constant, :hooks
  end

end

