class RoleSerializer < ActiveModel::Serializer

  attributes :id, :name, :builtin

  has_many :permissions
end