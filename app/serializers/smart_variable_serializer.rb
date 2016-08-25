class SmartVariableSerializer < ActiveModel::Serializer

  attribute  :key, key: :variable

  attributes :id, :default_value, :description, :parameter_type,
             :hidden_value, :hidden_value?,
             :validator_type, :validator_rule,
             :merge_overrides, :merge_default, :avoid_duplicates,
             :override_value_order,
             :validator_type, :validator_rule

  attribute :override_values_count

  has_one :puppetclass

  has_many :override_values
end
