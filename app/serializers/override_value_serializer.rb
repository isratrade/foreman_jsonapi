class OverrideValueSerializer < ActiveModel::Serializer

  attributes :id, :match, :value, :use_puppet_default, :created_at, :updated_at

end
