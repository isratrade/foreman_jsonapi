module Api
  module Jsonapi
    class OrganizationsController < V2::OrganizationsController

      include Api::Jsonapi

      def index
        @organizations = Organization.my_organizations.search_for(*search_options).paginate(paginate_options)
        render json: @organizations,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: OrganizationSerializer
      end

      def show
        @organization = Organization.find(params[:id])
        render json: @organization,
               fields: @fields_hash,
               include: @include_array,
               serializer: OrganizationSerializer
      end

    end
  end
end
