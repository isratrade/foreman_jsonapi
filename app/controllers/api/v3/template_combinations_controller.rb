module Api
  module V3
    class TemplateCombinationsController < V2::TemplateCombinationsController

      include Api::Version3

     def index
        super
        render json: @template_combinations,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: TemplateCombinationSerializer
      end

      def show
        super
        render json: @template_combination,
               fields: @fields_hash,
               include: @include_array,
               serializer: TemplateCombinationSerializer
      end

    end
  end
end
