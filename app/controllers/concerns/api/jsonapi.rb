module Api
  module Jsonapi
    extend ActiveSupport::Concern

    included do
      resource_description do
        api_version "v21"
        app_info N_("Foreman JSONAPI v21 is experimental. You may use v21 by either passing 'version=v21' in the Accept Header or using api/v21/ in the URL.")
      end

      before_action :set_render_options, only: [:index, :show]
    end

    def api_version
      'v21'
    end

    def set_render_options
      @fields_hash = Array(params[:fields]).map { |k,v|[k, v.to_s.split(',').map(&:to_sym)] }.to_h
      @include_array = params[:include].to_s.split(',').map(&:to_sym)
    end


  end
end