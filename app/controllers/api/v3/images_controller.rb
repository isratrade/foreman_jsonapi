module Api
  module V3
    class ImagesController < V2::ImagesController

      include Api::Version3

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
