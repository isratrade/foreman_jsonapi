module Api
  module Jsonapi
    class StatisticsController < V2::StatisticsController

      include Api::Jsonapi

      def index
        # No serializer
        super
      end

    end
  end
end
