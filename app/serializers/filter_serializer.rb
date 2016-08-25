class FilterSerializer < ActiveModel::Serializer

  attributes :search, :resource_type, :unlimited?, :created_at, :updated_at

  has_one :role
  has_many :permissions
end
