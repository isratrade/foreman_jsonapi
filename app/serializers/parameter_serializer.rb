class ParameterSerializer < ActiveModel::Serializer

  type :parameters

  attributes :id, :name, :value, :priority, :created_at, :updated_at

  has_one :host, if: :host_paramter?
  has_one :hostgroup, if: :group_paramter?
  has_one :domain, if: :domain_paramter?
  has_one :operatingsystem, if: :os_paramter?

  def host_paramter?
    object.type == 'HostParameter'
  end

  def group_paramter?
    object.type == 'GroupParameter'
  end

  def domain_paramter?
    object.type == 'DomainParameter'
  end

  def os_paramter?
    object.type == 'OsParameter'
  end

end
