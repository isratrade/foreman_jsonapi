class AuditSerializer < ActiveModel::Serializer

  type :audits

  attributes :id, :auditable_type, :action, :audited_changes,
             :version, :comment, :associated_id, :associated_type,
             :remote_address, :associated_name, :created_at

  has_one :auditable
  has_one :user
end
