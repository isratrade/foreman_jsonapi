class SubnetSerializer < ActiveModel::Serializer

  attributes :id, :name, :network, :network_type, :network_address,
             :cidr, :mask, :priority, :vlanid, :gateway,
             :dns_primary, :dns_secondary,
             :from, :to, :ipam, :boot_mode,
             :created_at, :updated_at

  has_one :dhcp
  has_one :tftp
  has_one :dns

  has_many :domains
  has_many :interfaces
  has_many :parameters
  has_many :locations
  has_many :organizations
end
