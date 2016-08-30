module Api
  module Jsonapi
    class EnvironmentsController < V2::EnvironmentsController

      include Api::Jsonapi

      def index
        super
        render json: @environments,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: EnvironmentSerializer
      end

      def show
        super
        render json: @environment,
               fields: @fields_hash,
               include: @include_array,
               serializer: EnvironmentSerializer
      end

    end
  end
end
