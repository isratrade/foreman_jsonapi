module Api
  module V3
    class TemplateKindsController < V2::TemplateKindsController

      include Api::Version3

     def index
        super
        render json: @template_kinds,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: TemplateKindSerializer
      end

    end
  end
end
