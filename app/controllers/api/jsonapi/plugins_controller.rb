module Api
  module Jsonapi
    class PluginsController < V2::PluginsController

      include Api::Jsonapi

      def index
        super
        render :json => @plugins, :each_serializer => PluginSerializer
      end

    end
  end
end
