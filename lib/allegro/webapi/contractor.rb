module Allegro
  module WebApi
    module Contractor

      def do_get_post_buy_forms_data_for_sellers(transactions_ids_array)
          message = {
            session_id: @api_client.session_handle,
            transactions_ids_array: { item: transactions_ids_array }
          }

          @api_client
            .call(:do_get_post_buy_forms_data_for_sellers, message: message)
            .body[:do_get_post_buy_forms_data_for_sellers_response]
      end
    end
  end
end
