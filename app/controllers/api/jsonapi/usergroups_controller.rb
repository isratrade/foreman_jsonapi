module Api
  module Jsonapi
    class UsergroupsController < V2::UsergroupsController

      include Api::Jsonapi

     def index
        super
        render json: @usergroups,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: UsergroupSerializer
      end

      def show
        super
        render json: @usergroup,
               fields: @fields_hash,
               include: @include_array,
               serializer: UsergroupSerializer
      end

    end
  end
end
