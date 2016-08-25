class UsergroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :admin, :created_at, :updated_at

  has_many :external_usergroups
  has_many :usergroups
  has_many :users
  has_many :roles
end
