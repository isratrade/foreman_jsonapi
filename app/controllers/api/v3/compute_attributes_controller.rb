module Api
  module V3
    class ComputeAttributesController < V2::ComputeAttributesController

      include Api::Version3

      # No index or show actions
      # :only => [:create, :update]

    end
  end
end
