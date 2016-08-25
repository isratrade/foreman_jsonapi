class UserSerializer < ActiveModel::Serializer

  attributes :id, :login, :firstname, :lastname, :mail, :admin,
             :last_login_on, :timezone, :locale,
             :default_location, :default_organization,
             :effective_admin,
             :created_at, :updated_at

  has_one :auth_source, serializer: AuthSourceLdapSerializer

  has_many :mail_notifications
  has_many :roles
  has_many :usergroups
  has_many :locations
  has_many :organizations

  def effective_admin
    object.admin?
  end

end
