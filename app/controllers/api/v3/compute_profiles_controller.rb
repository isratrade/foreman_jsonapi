module Api
  module V3
    class ComputeProfilesController < V2::ComputeProfilesController

      include Api::Version3

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


