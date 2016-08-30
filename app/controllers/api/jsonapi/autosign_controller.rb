module Api
  module Jsonapi
    class AutosignController < V2::AutosignController

      include Api::Jsonapi

      def index
        super
      end

    end
  end
end
