module Api
  module Jsonapi
    class HomeController < V2::HomeController

      include Api::Jsonapi

      def index
        super
      end

      def status
        super
      end

    end
  end
end

