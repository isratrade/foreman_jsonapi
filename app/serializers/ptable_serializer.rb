class PtableSerializer < ActiveModel::Serializer

  attributes :id, :name,
             :os_family, :layout,
             :created_at, :updated_at

  has_many :operatingsystems
  has_many :locations
  has_many :organizations
end
