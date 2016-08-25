class AuthSourceLdapSerializer < ActiveModel::Serializer

  attributes :id, :type, :name,
             :host, :port, :account, :base_dn, :ldap_filter,
             :attr_login, :attr_firstname, :attr_lastname, :attr_mail,
             :attr_photo, :onthefly_register, :usergroup_sync, :tls,
             :server_type, :groups_base, :created_at, :updated_at

  has_many :external_usergroups
end
