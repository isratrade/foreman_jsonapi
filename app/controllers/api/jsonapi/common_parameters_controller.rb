module Api
  module Jsonapi
    class CommonParametersController < V2::CommonParametersController

      include Api::Jsonapi

      def index
        super
        render json: @common_parameters,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: CommonParameterSerializer
      end

      def show
        super
        render json: @common_parameter,
               fields: @fields_hash,
               include: @include_array,
               serializer: CommonParameterSerializer
      end

    end
  end
end
