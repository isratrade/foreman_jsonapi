module Api
  module V3
    class StatisticsController < V2::StatisticsController

      include Api::Version3

      def index
        # No serializer
        super
      end

    end
  end
end
