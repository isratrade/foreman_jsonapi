module Api
  module Jsonapi
    class SettingsController < V2::SettingsController

      include Api::Jsonapi

      def index
        super
        render json: @settings,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: SettingSerializer
      end

      def show
        super
        render json: @setting,
               fields: @fields_hash,
               include: @include_array,
               serializer: SettingSerializer
      end

    end
  end
end
