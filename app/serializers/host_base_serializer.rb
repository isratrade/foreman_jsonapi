class HostBaseSerializer < ActiveModel::Serializer
  include ActionView::Helpers::NumberHelper

  attributes :id, :name, :type, :ip, :ip6, :last_report, :mac,
             :sp_mac, :sp_ip, :sp_name,
             :build, :comment, :disk, :installed_at,
             :enabled, :managed, :use_image, :image_file, :uuid,
             :capabilities, :provision_method,
             :certname, :created_at, :updated_at,
             :last_compile, :global_status, :global_status_label,
             :created_at, :updated_at,
             :cpus, :memory_human_size, :disks_human_size, :disk_count,
             :subnet_to_s, :is_virtual,
             :is_managed, :is_discovered

  attribute :configuration_status, key: :puppet_status
  attribute :token, if: :token?

  def token?
    object.token && !h.token_expired?
  end

  def token
    host.token.value if token?
  end

  # # we need to cache results with @last_reports, rabl can't pass custom parameters to attriute methods
  # @object.global_status_label(:last_reports => @last_reports)
  # @object.configuration_status(:last_reports => @last_reports)
  # @object.configuration_status_label(:last_reports => @last_reports)

  has_one :environment
  has_one :realm
  has_one :domain
  has_one :architecture
  has_one :operatingsystem
  has_one :subnet
  has_one :subnet6
  has_one :sp_subnet
  has_one :ptable
  has_one :medium
  has_one :model
  has_one :hostgroup
  has_one :owner
  has_one :puppet_ca_proxy
  has_one :puppet_proxy
  has_one :compute_resource
  has_one :compute_profile
  has_one :image

  has_one :location, if: :locations_enabled?
  has_one :organization, if: :organizations_enabled?


  # TODO
  # HostStatus.status_registry.each do |status_class|
  #   attributes "#{status_class.humanized_name}_status", "#{status_class.humanized_name}_status_label", :if => @object.get_status(status_class).relevant?
  # end

  # @object.facets_with_definitions.each do |_facet, definition|
  #   node do
  #     partial(definition.api_list_view, :object => @object) if definition.api_list_view
  #   end
  # end

  def locations_enabled?
    SETTINGS[:locations_enabled]
  end

  def organizations_enabled?
    SETTINGS[:organizations_enabled]
  end

  def is_managed
    object.type == "Host::Managed"
  end

  def is_discovered
    object.type == "Host::Discovered"
  end

  def ip
    object.ip
  end

  def is_virtual
    # same for both Discovered and Managed
    object.facts['is_virtual']
  end

  def subnet_to_s
    object.subnet.to_s
  end

end
