module Api
  module Jsonapi
    class UsersController < V2::UsersController

      include Api::Jsonapi

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
