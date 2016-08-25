class TemplateCombinationSerializer < ActiveModel::Serializer

  attributes :id, :created_at, :updated_at

  has_one :provisioning_template
  has_one :hostgroup
  has_one :environment
end
