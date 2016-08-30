module Api
  module Jsonapi
    class ExternalUsergroupsController < V2::ExternalUsergroupsController

      include Api::Jsonapi

      def index
        super
        render json: @external_usergroups,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: UsergroupSerializer
      end

      def show
        super
        render json: @external_usergroup,
               fields: @fields_hash,
               include: @include_array,
               serializer: UsergroupSerializer
      end

    end
  end
end
