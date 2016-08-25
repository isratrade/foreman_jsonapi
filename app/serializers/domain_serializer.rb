class DomainSerializer < ActiveModel::Serializer

  attributes :id, :name, :fullname, :dns_id, :created_at, :updated_at

  # def include?(field)
  #   Rails.info.logger 'GOTTEEEEEEEEEE'
  #   if @options.key?(:fields)
  #     return @options[:fields].include? field.to_s
  #   end
  #   super(field)
  # end

  has_many :parameters
  has_many :subnets
  has_many :interfaces
  has_many :locations
  has_many :organizations
end
