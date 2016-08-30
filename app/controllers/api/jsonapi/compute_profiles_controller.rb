module Api
  module Jsonapi
    class ComputeProfilesController < V2::ComputeProfilesController

      include Api::Jsonapi

      def index
        super
        render json: @compute_profiles,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: ComputeProfileSerializer
      end

      def show
        super
        render json: @compute_profile,
               fields: @fields_hash,
               include: @include_array,
               serializer: ComputeProfileSerializer
      end

    end
  end
end


