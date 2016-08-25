class PuppetclassSerializer < ActiveModel::Serializer

  attributes :id, :name, :module_name, :created_at, :updated_at

  has_many :environments
  has_many :hostgroups
  has_many :smart_variables
  has_many :smart_class_parameters

  def hostgroups
    object.all_hostgroups
  end

  def smart_variables
    object.lookup_keys
  end

  def smart_class_parameters
    object.class_params
  end

end
