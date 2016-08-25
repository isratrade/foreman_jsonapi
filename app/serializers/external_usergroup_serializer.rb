class ExternalUsergroupSerializer < ActiveModel::Serializer

  attributes :id, :name

  has_one :auth_source, serializer: AuthSourceLdapSerializer
end
