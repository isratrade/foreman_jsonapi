class OperatingsystemSerializer < ActiveModel::Serializer

  attributes :id, :name, :title,
             :description, :major, :minor, :family, :release_name, :password_hash,
             :created_at, :updated_at

  has_many :images
  has_many :media
  has_many :ptables
  has_many :architectures
  has_many :provisioning_templates
  has_many :os_default_templates
  has_many :parameters
end
