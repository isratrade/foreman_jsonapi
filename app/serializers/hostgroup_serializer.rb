class HostgroupSerializer < ActiveModel::Serializer

  attributes :id, :name, :title, :parent_id, :created_at, :updated_at

  attribute :all_puppetclasses

  has_many :puppetclasses
  has_many :config_groups
  has_many :template_combinations
  has_many :group_parameters
  has_many :locations
  has_many :organizations

  has_one :subnet
  has_one :operatingsystem
  has_one :domain
  has_one :environment
  has_one :compute_profile
  has_one :puppet_proxy
  has_one :puppet_ca_proxy
  has_one :ptable
  has_one :medium
  has_one :architecture
  has_one :realm

  def all_puppetclasses
    #TODO
  end

end
