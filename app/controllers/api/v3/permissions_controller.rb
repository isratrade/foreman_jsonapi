module Api
  module V3
    class PermissionsController < V2::PermissionsController

      include Api::Version3

      def index
        super
        render json: @permissions,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: PermissionSerializer
      end

      def show
        super
        render json: @permission,
               fields: @fields_hash,
               include: @include_array,
               serializer: PermissionSerializer
      end

    end
  end
end
