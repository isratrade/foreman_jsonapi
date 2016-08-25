module Api
  module V3
    class ComputeResourcesController < V2::ComputeResourcesController

      include Api::Version3

      def index
        super
        render json: @compute_resources,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ComputeResourceSerializer
      end

      def show
        super
        render json: @compute_resource,
               fields: @fields_hash,
               include: @include_array,
               serializer: ComputeResourceSerializer
      end

    end
  end
end
