module Api
  module Jsonapi
    class AuthSourceLdapsController < V2::AuthSourceLdapsController

      include Api::Jsonapi

      def index
        super
        render json: @auth_source_ldaps,
               fields: @fields_hash,
               include: @include_array,
               each_serializer: AuthSourceLdapSerializer
      end

      def show
        super
        render json: @auth_source_ldap,
               fields: @fields_hash,
               include: @include_array,
               serializer: AuthSourceLdapSerializer
      end

    end
  end
end
