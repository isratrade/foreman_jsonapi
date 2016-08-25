class CommonParameterSerializer < ActiveModel::Serializer

  attributes :id, :name, :value,
             :hidden_value?, :hidden_value,
             :created_at, :updated_at
end
