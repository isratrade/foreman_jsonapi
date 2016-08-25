module Api
  module V3
    class ConfigReportsController < V2::ConfigReportsController

      include Api::Version3

      before_action :set_render_options, only: [:last]

      def index
        super
        render json: @config_reports,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ConfigReportSerializer
      end

      def show
        super
        render json: @config_report,
               fields: @fields_hash,
               include: @include_array,
               serializer: ConfigReportSerializer
      end

      def last
        super
        render json: @config_report,
               fields: @fields_hash,
               include: @include_array,
               serializer: ConfigReportSerializer
      end

    end
  end
end
