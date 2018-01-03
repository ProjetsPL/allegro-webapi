# frozen_string_literal: true

module Allegro
  module WebApi
    module Utils
      def do_get_countries
        message = { country_code: @api_client.country_code || 1, webapi_key: @api_client.webapi_key }
        @api_client
          .call(:do_get_countries, message: message)
          .body[:do_get_countries_response][:country_array]
      end

      def do_get_shipment_data
        message = { country_id: @api_client.country_code, webapi_key: @api_client.webapi_key }
        @api_client
          .call(:do_get_shipment_data, message: message)
          .body[:do_get_shipment_data_response][:shipment_data_list]
      end

      def do_get_states_info
        message = { country_code: @api_client.country_code || 1, webapi_key: @api_client.webapi_key }
        @api_client
          .call(:do_get_states_info, message: message)
          .body[:do_get_states_info_response][:states_info_array]
      end

      def do_get_system_time
        message = { country_id: @api_client.country_code, webapi_key: @api_client.webapi_key }
        @api_client
          .call(:do_get_system_time, message: message)
          .body[:do_get_system_time_response][:server_time]
      end
    end
  end
end
