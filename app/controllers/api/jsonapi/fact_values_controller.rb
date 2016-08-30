module Api
  module Jsonapi
    class FactValuesController < V2::FactValuesController

      include Api::Jsonapi

      def index
        super
        # render json with NO serializer
        render :json => @fact_values
      end

    end
  end
end
