class ArchitectureSerializer < ActiveModel::Serializer

  attributes :id, :name, :created_at, :updated_at

  has_many :images
  has_many :operatingsystems
end
