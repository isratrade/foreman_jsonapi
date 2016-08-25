class RealmSerializer < ActiveModel::Serializer

  attributes :id, :name, :realm_type, :created_at, :updated_at

  has_one :realm_proxy

  has_many :locations
  has_many :organizations
end
