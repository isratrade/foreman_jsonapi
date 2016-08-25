module Api
  module V3
    class FactValuesController < V2::FactValuesController

      include Api::Version3

      def index
        super
        # render json with NO serializer
        render :json => @fact_values
      end

    end
  end
end
