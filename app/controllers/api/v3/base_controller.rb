module Api
  module V3
    class BaseController < Api::BaseController
      include Api::Version3

      before_filter :check_content_type

      def check_content_type
        if (request.post? || request.put?) && request.content_type != "application/json"
          render_error(:unsupported_content_type, :status => 415)
        end
      end

    end
  end
end
