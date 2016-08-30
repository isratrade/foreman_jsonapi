module Api
  module Jsonapi
    class SmartProxiesController < V2::SmartProxiesController

      include Api::Jsonapi

     def index
        super
        render json: @smart_proxies,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: SmartProxySerializer
      end

      def show
        super
        render json: @smart_proxy,
               fields: @fields_hash,
               include: @include_array,
               serializer: SmartProxySerializer
      end

    end
  end
end
