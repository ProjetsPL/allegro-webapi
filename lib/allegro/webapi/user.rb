module Allegro
  module WebApi
    module User
      def do_get_my_data
        @api_client
          .call(:do_get_my_data, message: {session_handle: @api_client.session_handle})
          .body[:do_get_my_data_response][:user_data]
      end

      def do_show_user(user_id)
        message = {
          webapi_key: @api_client.webapi_key,
          country_id: @api_client.country_code,
          user_id: user_id
        }

        @api_client
            .call(:do_show_user, message: message)
            .body[:do_show_user_response]
      end
    end
  end
end
