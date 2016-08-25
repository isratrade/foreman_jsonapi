class ModelSerializer < ActiveModel::Serializer

  attributes :id, :name, :info, :vendor_class, :hardware_model,
             :created_at, :updated_at
end
