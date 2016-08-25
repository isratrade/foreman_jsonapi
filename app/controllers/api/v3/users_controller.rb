module Api
  module V3
    class UsersController < V2::UsersController

      include Api::Version3

     def index
        super
        render json: @users,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: UserSerializer
      end

      def show
        super
        render json: @user,
               fields: @fields_hash,
               include: @include_array,
               serializer: UserSerializer
      end

    end
  end
end
