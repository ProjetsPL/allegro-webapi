# frozen_string_literal: true

module Allegro
  module WebApi
    module Utils
      def do_get_countries
        message = { country_code: @web_api_client.country_code || 1, webapi_key: @web_api_client.webapi_key }
        @web_api_client
          .call(:do_get_countries, message: message)
          .body[:do_get_countries_response][:country_array]
      end

      def do_get_shipment_data
        message = { country_id: @web_api_client.country_code, webapi_key: @web_api_client.webapi_key }
        @web_api_client
          .call(:do_get_shipment_data, message: message)
          .body[:do_get_shipment_data_response][:shipment_data_list]
      end

      def do_get_states_info
        message = { country_code: @web_api_client.country_code || 1, webapi_key: @web_api_client.webapi_key }
        @web_api_client
          .call(:do_get_states_info, message: message)
          .body[:do_get_states_info_response][:states_info_array]
      end

      def do_get_system_time
        message = { country_id: @web_api_client.country_code, webapi_key: @web_api_client.webapi_key }
        @web_api_client
          .call(:do_get_system_time, message: message)
          .body[:do_get_system_time_response][:server_time]
      end

      def do_send_refund_form(deal_id, reason_id, refund_quantity)
        message = {
          session_id: @web_api_client.session_handle,
          deal_id: deal_id,
          reason_id: reason_id,
          refund_quantity: refund_quantity
        }

        @web_api_client
          .call(:do_send_refund_form, message: message)
          .body[:do_send_refund_form_response]
      end

      def do_get_refunds_reasons(deal_id)
        message = {
          session_id: @web_api_client.session_handle,
          deal_id: deal_id,
        }

        @web_api_client
          .call(:do_get_refunds_reasons, message: message)
          .body[:do_get_refunds_reasons_response]
      end
    end
  end
end
