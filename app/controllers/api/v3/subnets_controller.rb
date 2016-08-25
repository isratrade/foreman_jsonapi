module Api
  module V3
    class SubnetsController < V2::SubnetsController

      include Api::Version3

     def index
        super
        render json: @subnets,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: SubnetSerializer
      end

      def show
        super
        render json: @subnet,
               fields: @fields_hash,
               include: @include_array,
               serializer: SubnetSerializer
      end

    end
  end
end
