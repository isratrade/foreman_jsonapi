module Api
  module V3
    class RolesController < V2::RolesController

      include Api::Version3

      def index
        super
        render json: @roles,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: RoleSerializer
      end

      def show
        super
        render json: @role,
               fields: @fields_hash,
               include: @include_array,
               serializer: RoleSerializer
      end

    end
  end
end
