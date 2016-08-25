module Api
  module V3
    class ExternalUsergroupsController < V2::ExternalUsergroupsController

      include Api::Version3

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
