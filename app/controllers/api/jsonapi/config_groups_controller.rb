module Api
  module Jsonapi
    class ConfigGroupsController < V2::ConfigGroupsController

      include Api::Jsonapi

      def index
        super
        render json: @config_groups,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ConfigGroupSerializer
      end

      def show
        super
        render json: @config_group,
               fields: @fields_hash,
               include: @include_array,
               serializer: ConfigGroupSerializer
      end

    end
  end
end
