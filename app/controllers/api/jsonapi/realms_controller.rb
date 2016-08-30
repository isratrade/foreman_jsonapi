module Api
  module Jsonapi
    class RealmsController < V2::RealmsController

      include Api::Jsonapi

      def index
        super
        render json: @realms,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: RealmSerializer
      end

      def show
        super
        render json: @realm,
               fields: @fields_hash,
               include: @include_array,
               serializer: RealmSerializer
      end

    end
  end
end
