class BookmarkSerializer < ActiveModel::Serializer

  attributes :id, :name, :controller, :query, :public

  has_one :owner
end
