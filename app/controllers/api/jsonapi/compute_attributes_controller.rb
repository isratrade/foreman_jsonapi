module Api
  module Jsonapi
    class ComputeAttributesController < V2::ComputeAttributesController

      include Api::Jsonapi

      # No index or show actions
      # :only => [:create, :update]

    end
  end
end
