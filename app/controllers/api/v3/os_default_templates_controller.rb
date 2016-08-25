module Api
  module V3
    class OsDefaultTemplatesController < V2::OsDefaultTemplatesController

      include Api::Version3

      def index
        super
        render json: @os_default_templates,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: OsDefaultTemplateSerializer
      end

      def show
        super
        render json: @os_default_template,
               fields: @fields_hash,
               include: @include_array,
               serializer: OsDefaultTemplateSerializer
      end

    end
  end
end
