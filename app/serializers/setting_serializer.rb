class SettingSerializer < ActiveModel::Serializer

  attributes :id, :name, :value, :description, :category,
             :settings_type, :default, :created_at, :updated_at
end
