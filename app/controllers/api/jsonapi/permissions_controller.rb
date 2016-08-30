module Api
  module Jsonapi
    class PermissionsController < V2::PermissionsController

      include Api::Jsonapi

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
