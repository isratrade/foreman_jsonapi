module Api
  module V3
    class BookmarksController < V2::BookmarksController

      include Api::Version3

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
