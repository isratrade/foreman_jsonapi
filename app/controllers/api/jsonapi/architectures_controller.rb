module Api
  module Jsonapi
    class ArchitecturesController < V2::ArchitecturesController

      include Api::Jsonapi

      def index
        super
        render json: @architectures,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ArchitectureSerializer
      end

      def show
        super
        render json: @architecture,
               fields: @fields_hash,
               include: @include_array,
               serializer: ArchitectureSerializer
      end

    end
  end
end
