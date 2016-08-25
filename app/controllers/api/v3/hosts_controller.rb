module Api
  module V3
    class HostsController < V2::HostsController

      include Api::Version3

      def index
        super
        render json: @hosts,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: HostManagedSerializer
      end

      def show
        super
        render json: @host,
               fields: @fields_hash,
               include: @include_array,
               serializer: HostManagedSerializer
      end

    end
  end
end

