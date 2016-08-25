class PluginSerializer < ActiveModel::Serializer

  attributes :id, :name, :author, :description, :url, :version

end
