module Api
  module Jsonapi
    class OverrideValuesController < V2::OverrideValuesController

      include Api::Jsonapi

      def index
        super
        render json: @override_values,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: OverrideValueSerializer
      end

      def show
        super
        render json: @override_value,
               fields: @fields_hash,
               include: @include_array,
               serializer: OverrideValueSerializer
      end

    end
  end
end
