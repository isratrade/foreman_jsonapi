class MailNotificationSerializer < ActiveModel::Serializer

  attributes :id, :name, :description, :subscription_type, :created_at, :updated_at

end
