module Api
  module V3
    class AuditsController < V2::AuditsController

      include Api::Version3

      def index
        super
        @audits = @audits.includes(:auditable)
        render json: @audits,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: AuditSerializer
      end

      def show
        super
        render json: @audit,
               fields: @fields_hash,
               include: @include_array,
               serializer: AuditSerializer
      end

    end
  end
end
