module Api
  module Jsonapi
    class ImagesController < V2::ImagesController

      include Api::Jsonapi

      def index
        super
        render json: @images,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ImageSerializer
      end

      def show
        super
        render json: @image,
               fields: @fields_hash,
               include: @include_array,
               serializer: ImageSerializer
      end

    end
  end
end
