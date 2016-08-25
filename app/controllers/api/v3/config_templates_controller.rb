module Api
  module V3
    class ConfigTemplatesController < V2::ConfigTemplatesController

      include Api::Version3

      def index
        super
        render json: @config_templates,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ConfigTemplateSerializer
      end

      def show
        super
        render json: @config_template,
               fields: @fields_hash,
               include: @include_array,
               serializer: ConfigTemplateSerializer
      end

    end
  end
end
