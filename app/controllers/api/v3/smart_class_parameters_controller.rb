module Api
  module V3
    class SmartClassParametersController < V2::SmartClassParametersController

      include Api::Version3

      def index
        super
        render json: @smart_class_parameters,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: SmartClassParameterSerializer
      end

      def show
        super
        render json: @smart_class_parameter,
               fields: @fields_hash,
               include: @include_array,
               serializer: SmartClassParameterSerializer
      end

    end
  end
end
