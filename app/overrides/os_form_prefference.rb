Deface::Override.new(:virtual_path => 'operatingsystems/_form',
                     :name => 'os_form',
                     :insert_after => 'code[erb-loud]:contains("select_f"):contains("families_as_collection")',
                     :partial => 'os_preference/os_form.html.erb')

=begin
Deface::Override.new(:virtual_path => 'common/os_selection/_architecture',
                     :name => 'os_selection',
                     :replace => 'code[erb-loud]:contains("operatingsystem_id")',
                     :original => <<ORIG,
  <%= select_f f, :operatingsystem_id, arch_oss, :id, :to_label,
    {:selected => item.operatingsystem_id, :include_blank => true},
    {:id => type + "_operatingsystem_id", :name => type + "[operatingsystem_id]",
      :label => _("Operating Systems"),
      :disabled => arch_oss.empty? ? true : false,
      :onchange => 'os_selected(this);', :'data-url' => method_path('os_selected')}
  %>
ORIG
                     :partial => 'os_preference/os_selection.html.erb')
=end
