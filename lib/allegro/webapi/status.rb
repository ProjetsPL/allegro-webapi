# frozen_string_literal: true

module Allegro
  module WebApi
    module Status
      def do_query_all_sys_status
        message = { country_id: @api_client.country_code, webapi_key: @api_client.webapi_key }
        @api_client
          .call(:do_query_all_sys_status, message: message)
          .body[:do_query_all_sys_status_response][:sys_country_status]
      end

      def do_query_sys_status(sysvar = 3)
        message = { sysvar: sysvar, country_id: @api_client.country_code, webapi_key: @api_client.webapi_key }
        @api_client
          .call(:do_query_sys_status, message: message)
          .body[:do_query_sys_status_response]
      end
    end
  end
end
