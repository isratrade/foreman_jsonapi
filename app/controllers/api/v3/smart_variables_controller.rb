module Api
  module V3
    class SmartVariablesController < V2::SmartVariablesController

      include Api::Version3

     def index
        super
        render json: @smart_variables,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: SmartVariableSerializer
      end

      def show
        super
        render json: @smart_variable,
               fields: @fields_hash,
               include: @include_array,
               serializer: SmartVariableSerializer
      end

    end
  end
end
