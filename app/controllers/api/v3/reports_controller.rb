module Api
  module V3
    class ReportsController < V2::ReportsController

      include Api::Version3

      before_action :set_render_options, only: [:last]

      def index
        super
        render json: @reports,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ReportSerializer
      end

      def show
        super
        render json: @report,
               fields: @fields_hash,
               include: @include_array,
               serializer: ReportSerializer
      end

      def last
        super
        render json: @report,
               fields: @fields_hash,
               include: @include_array,
               serializer: ReportSerializer
      end

    end
  end
end
