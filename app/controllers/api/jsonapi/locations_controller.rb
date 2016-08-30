module Api
  module Jsonapi
    class LocationsController < V2::LocationsController

      include Api::Jsonapi

      def index
        @locations = Location.my_locations.search_for(*search_options).paginate(paginate_options)
        render json: @locations,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: LocationSerializer
      end

      def show
        @location = Location.find(params[:id])
        render json: @location,
               fields: @fields_hash,
               include: @include_array,
               serializer: LocationSerializer
      end

    end
  end
end
