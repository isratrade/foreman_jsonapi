module Api
  module V3
    class PluginsController < V2::PluginsController

      include Api::Version3

      def index
        super
        render :json => @plugins, :each_serializer => PluginSerializer
      end

    end
  end
end
