class OsDefaultTemplateSerializer < ActiveModel::Serializer

  attributes :id, :created_at, :updated_at

  has_one :provisioning_template
  has_one :template_kind
  has_one :operatingsystem

end
