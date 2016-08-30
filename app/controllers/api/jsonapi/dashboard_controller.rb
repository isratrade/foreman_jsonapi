module Api
  module Jsonapi
    class DashboardController < V2::DashboardController

      include Api::Jsonapi

      def index
        super
      end

    end
  end
end
