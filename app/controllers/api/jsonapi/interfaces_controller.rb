module Api
  module Jsonapi
    class InterfacesController < V2::InterfacesController

      include Api::Jsonapi

      def index
        super
        render json: @interfaces,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: InterfaceSerializer
      end

      def show
        super
        render json: @interface,
               fields: @fields_hash,
               include: @include_array,
               serializer: InterfaceSerializer
      end

    end
  end
end
