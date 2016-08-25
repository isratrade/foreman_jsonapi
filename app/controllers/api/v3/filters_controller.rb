module Api
  module V3
    class FiltersController < V2::FiltersController

      include Api::Version3

      def index
        super
        render json: @filters,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: FilterSerializer
      end

      def show
        super
        render json: @filter,
               fields: @fields_hash,
               include: @include_array,
               serializer: FilterSerializer
      end

    end
  end
end
