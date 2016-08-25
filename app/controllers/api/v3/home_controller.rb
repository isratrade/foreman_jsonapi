module Api
  module V3
    class HomeController < V2::HomeController

      include Api::Version3

      def index
        super
      end

      def status
        super
      end

    end
  end
end

