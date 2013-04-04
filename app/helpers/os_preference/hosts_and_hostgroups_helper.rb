module OsPreference
  module HostsAndHostgroupsHelper
    def self.included(base)
      base.class_eval do
        alias_method_chain :arch_oss, :preference
      end
    end

    def arch_oss_with_preference
      arch_oss_without_preference.sort_by(&:preference)
    end
  end
end
