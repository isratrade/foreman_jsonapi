module Api
  module V3
    class DashboardController < V2::DashboardController

      include Api::Version3

      def index
        super
      end

    end
  end
end
