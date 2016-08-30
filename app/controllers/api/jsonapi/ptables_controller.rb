module Api
  module Jsonapi
    class PtablesController < V2::PtablesController

      include Api::Jsonapi

      def index
        super
        render json: @ptables,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: PtableSerializer
      end

      def show
        super
        render json: @ptable,
               fields: @fields_hash,
               include: @include_array,
               serializer: PtableSerializer
      end

    end
  end
end
