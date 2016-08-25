class ImageSerializer < ActiveModel::Serializer

  attributes :id, :name,
             :uuid, :username,
             :created_at, :updated_at

  attribute :user_data
  attribute :iam_role

  has_one :operatingsystem
  has_one :architecture
  has_one :compute_resource

  def user_data
    #TODO - :if => ->(img) { img.compute_resource.user_data_supported? }
  end

  def iam_role
    #TODO - :if => ->(img) { img.compute_resource.is_a? Foreman::Model::EC2 }
  end
end
