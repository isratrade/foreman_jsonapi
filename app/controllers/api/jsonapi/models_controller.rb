module Api
  module Jsonapi
    class ModelsController < V2::ModelsController

      include Api::Jsonapi

      def index
        super
        render json: @models,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ModelSerializer
      end

      def show
        super
        render json: @model,
               fields: @fields_hash,
               include: @include_array,
               serializer: ModelSerializer
      end

    end
  end
end
