# frozen_string_literal: true

module Allegro
  module WebApi
    module User
      def do_get_my_data
        @web_api_client
          .call(:do_get_my_data, message: { session_handle: @web_api_client.session_handle })
          .body[:do_get_my_data_response][:user_data]
      end

      def do_show_user(user_id)
        message = {
          webapi_key: @web_api_client.webapi_key,
          country_id: @web_api_client.country_code,
          user_id: user_id
        }

        @web_api_client
          .call(:do_show_user, message: message)
          .body[:do_show_user_response]
      end
    end
  end
end
