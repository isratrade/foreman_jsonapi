class MediumSerializer < ActiveModel::Serializer

  attributes :id, :name, :path, :os_family, :created_at, :updated_at

  attribute :media_path, if: :solaris?
  attribute :config_path, if: :solaris?
  attribute :image_path, if: :solaris?

  has_many :operatingsystems
  has_many :locations
  has_many :organizations

  def solaris?
    object.os_family == 'Solaris'
  end

end
