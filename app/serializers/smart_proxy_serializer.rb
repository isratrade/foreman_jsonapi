class SmartProxySerializer < ActiveModel::Serializer

  attributes :id, :name, :url, :created_at, :updated_at

  has_many :features
  has_many :locations
  has_many :organizations
end
