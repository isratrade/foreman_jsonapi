module Api
  module Jsonapi
    class BookmarksController < V2::BookmarksController

      include Api::Jsonapi

      def index
        super
        render json: @bookmarks,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: BookmarkSerializer
      end

      def show
        super
        render json: @bookmark,
               fields: @fields_hash,
               include: @include_array,
               serializer: BookmarkSerializer
      end

    end
  end
end
