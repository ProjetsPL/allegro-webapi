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

      def do_add_package_info_to_post_buy_form(transactions_id, operator_id, package_id)
          message = {
            session_id: @api_client.session_handle,
            transaction_id: transactions_id,
            package_info: {
              item: [
                {
                  operator_id: operator_id,
                  package_id: package_id
                }
              ]
            }
          }

          @api_client
            .call(:do_add_package_info_to_post_buy_form, message: message)
            .body[:do_add_package_info_to_post_buy_form_response]
      end
    end
  end
end
