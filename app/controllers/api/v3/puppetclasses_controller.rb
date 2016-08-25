module Api
  module V3
    class PuppetclassesController < V2::PuppetclassesController

      include Api::Version3

      def index
        @puppetclasses = Puppetclass.authorized(:view_puppetclasses).search_for(*search_options)
        render json: @puppetclasses,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: PuppetclassSerializer
      end

      def show
        super
        render json: @puppetclass,
               fields: @fields_hash,
               include: @include_array,
               serializer: PuppetclassSerializer
      end

    end
  end
end
