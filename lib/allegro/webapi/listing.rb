# frozen_string_literal: true

module Allegro
  module WebApi
    module Listing
      def do_get_items_list(filter_options = [], sort_options = [], result_size = nil, result_offset = nil, result_scope = nil)
        message = {
          webapi_key: @api_client.webapi_key,
          country_id: @api_client.country_code,
          filter_options: filter_options,
          sort_options: sort_options,
          result_size: result_size,
          result_offset: result_offset,
          result_scope: result_scope
        }

        @api_client
          .call(:do_get_items_list, message: message)
          .body[:do_get_items_list_response]
      end
    end
  end
end
