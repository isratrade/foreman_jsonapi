module Api
  module V3
    class CommonParametersController < V2::CommonParametersController

      include Api::Version3

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
