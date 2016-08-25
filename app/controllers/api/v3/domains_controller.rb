module Api
  module V3
    class DomainsController < V2::DomainsController

      include Api::Version3

      def index
        super
        render json: @domains,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: DomainSerializer
      end

      def show
        super
        render json: @domain,
               fields: @fields_hash,
               include: @include_array,
               serializer: DomainSerializer
      end

    end
  end
end
