class OrganizationSerializer < ActiveModel::Serializer

  attributes :id, :name,
             :select_all_types,
             :created_at, :updated_at

  has_many :hostgroups
  has_many :subnets
  has_many :domains
  has_many :smart_proxies
  has_many :provisioning_templates
  has_many :media
  has_many :environments
  has_many :realms
  has_many :compute_resources
  has_many :users
  has_many :ptables
  has_many :locations
  has_many :organization_parameters

  def select_all_types
    #TODO
  end
end