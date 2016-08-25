module Api
  module V3
    class TasksController < BaseController

      include Api::Version3

      def index
        # No serializer
        super
      end

    end
  end
end
