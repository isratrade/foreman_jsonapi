module Api
  module Version3
    extend ActiveSupport::Concern


    included do
      resource_description do
        api_version "v3"
        app_info N_("Foreman API v3 is experimental. You may use v3 by either passing 'version=3' in the Accept Header or using api/v3/ in the URL.")
      end

      before_action :set_render_options, only: [:index, :show]
    end

    def api_version
      '3'
    end

    def set_render_options
      @fields_hash = Array(params[:fields]).map { |k,v|[k, v.to_s.split(',').map(&:to_sym)] }.to_h
      @include_array = params[:include].to_s.split(',').map(&:to_sym)
    end


  end
end