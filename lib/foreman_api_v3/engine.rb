require 'active_model_serializers'

module ForemanApiV3
  class Engine < ::Rails::Engine

    # support pre-4 Rails versions
    config.autoload_paths += Dir["#{config.root}/app/controllers/concerns"]
    config.autoload_paths += Dir["#{config.root}/app/serializers"]

    initializer 'foreman_api_v3.register_plugin', :before => :finisher_hook do |app|
      Foreman::Plugin.register :foreman_api_v3 do
        requires_foreman '>= 1.11.0'

        ActiveModelSerializers.config.adapter = :json_api
        ActiveModelSerializers.config.key_transform = :unaltered

#        Mime::Type.register "application/json", :json, %w( text/x-json application/jsonrequest application/vnd.api+json )
        # # wrap_parameters.rb
        # ActiveSupport.on_load(:action_controller) do
        #   wrap_parameters format: [:json, :api_json]
        # end

        #intializers/custom_mime_type.rb
        # Mime::Type.unregister :json
        # Mime::Type.register "application/json", :json, %w( text/x-json application/jsonrequest application/vnd.api+json application/json )

        # security_block :foreman_api_v3 do
        #   permission :rename_discovered_hosts, {
        #     :"api/v3/discovered_hosts" => [:rename]
        #   }, :resource_type => '::Host::Discovered'
        # end

        apipie_documented_controllers ["#{ForemanApiV3::Engine.root}/app/controllers/api/v3/*.rb"]
      end
    end

  end
end
