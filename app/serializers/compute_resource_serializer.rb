class ComputeResourceSerializer < ActiveModel::Serializer

  attributes :id, :name, :provider, :provider_friendly_name,
             :description, :url,
             :created_at, :updated_at


  attribute :display_type, if: :libvirt?
  attribute :set_console_password, if: :libvirt?

  attribute :access_key, if: :ec2?
  attribute :region, if: :ec2?

  attribute :email, if: :gce?
  attribute :zone, if: :gce?
  attribute :project, if: :gce?
  attribute :key_path, if: :gce?

  attribute :user, if: :openstack?
  attribute :tenant, if: :openstack?

  attribute :user, if: :ovirt?
  attribute :datacenter, if: :ovirt?

  attribute :user, if: :rackspace?
  attribute :region, if: :rackspace?

  attribute :user, if: :vmware?
  attribute :datacenter, if: :vmware?
  attribute :server, if: :vmware?
  attribute :set_console_password, if: :vmware?

  def libvirt?
    object.provider.downcase == 'libvirt'
  end

  def ec2?
    object.provider.downcase == 'ec2'
  end

  def gce?
    object.provider.downcase == 'gce'
  end

  def openstack?
    object.provider.downcase == 'openstack'
  end

  def ovirt?
    object.provider.downcase == 'ovirt'
  end

  def rackspace?
    object.provider.downcase == 'rackspace'
  end

  def vmware?
    object.provider.downcase == 'vmware'
  end

  has_many :images
  has_many :compute_attributes
  has_many :locations
  has_many :organizations

end
