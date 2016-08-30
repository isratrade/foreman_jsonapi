module Api
  module Jsonapi
    class MediaController < V2::MediaController

      include Api::Jsonapi

      def index
        super
        render json: @media,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: MediumSerializer
      end

      def show
        super
        render json: @medium,
               fields: @fields_hash,
               include: @include_array,
               serializer: MediumSerializer
      end

    end
  end
end
