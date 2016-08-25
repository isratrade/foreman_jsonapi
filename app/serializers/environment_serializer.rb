class EnvironmentSerializer < ActiveModel::Serializer

  attributes :id, :name, :created_at, :updated_at

  has_many :puppetclasses
  has_many :template_combinations
  has_many :locations
  has_many :organizations
end
