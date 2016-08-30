module Api
  module Jsonapi
    class TemplateKindsController < V2::TemplateKindsController

      include Api::Jsonapi

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
