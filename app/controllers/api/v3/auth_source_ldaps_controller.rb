module Api
  module V3
    class AuthSourceLdapsController < V2::AuthSourceLdapsController

      include Api::Version3

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
