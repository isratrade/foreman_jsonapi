module Api
  module Jsonapi
    class ParametersController < V2::ParametersController

      include Api::Jsonapi

      def index
        super
        render json: @parameters,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ParameterSerializer
      end

      def show
        super
        render json: @parameter,
               fields: @fields_hash,
               include: @include_array,
               serializer: ParameterSerializer
      end

    end
  end
end
