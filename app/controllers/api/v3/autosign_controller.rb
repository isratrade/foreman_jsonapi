module Api
  module V3
    class AutosignController < V2::AutosignController

      include Api::Version3

      def index
        super
      end

    end
  end
end
