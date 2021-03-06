<% module_namespacing do -%>
class AuthenticationProvider < ActiveRecord::Base
  has_many :<%= table_name %>
  has_many :<%= class_name.downcase %>_authentications
<% if Rails::VERSION::MAJOR < 4 -%>
  attr_accessible :name
<% end -%>
end
<% end -%>