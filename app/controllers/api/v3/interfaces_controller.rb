module Api
  module V3
    class InterfacesController < V2::InterfacesController

      include Api::Version3

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
