class ConfigReportSerializer < ActiveModel::Serializer

  attributes :id, :name, :created_at, :updated_at
  attributes :id, :host_id, :host_name, :reported_at, :status
  attributes :metrics, :created_at, :updated_at

  attribute :summary
  attribute :logs

  def summary
    object.summary_status
  end

  # TODO
  def logs
    # child :source do
    #   attribute :value => :source
    # end
    # child :message do
    #   attribute :value => :message
    # end
    # attribute :level
  end

end
