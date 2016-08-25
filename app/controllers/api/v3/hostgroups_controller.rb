module Api
  module V3
    class HostgroupsController < V2::HostgroupsController

      include Api::Version3

      def index
        super
        render json: @hostgroups,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: HostgroupSerializer
      end

      def show
        super
        render json: @hostgroup,
               fields: @fields_hash,
               include: @include_array,
               serializer: HostgroupSerializer
      end

    end
  end
end
