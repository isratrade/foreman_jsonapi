module Api
  module Jsonapi
    class TasksController < BaseController

      include Api::Jsonapi

      def index
        # No serializer
        super
      end

    end
  end
end
