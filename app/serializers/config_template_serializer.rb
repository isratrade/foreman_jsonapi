class ConfigTemplateSerializer < ActiveModel::Serializer

  attributes :id, :name, :snippet, :audit_comment, :template, :locked,
             :created_at, :updated_at

  has_one :template_kind

  has_many :template_combinations
  has_many :operatingsystems
  has_many :os_default_templates
  has_many :locations
  has_many :organizations
end
