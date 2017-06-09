module Allegro
  module WebApi
    module Auction

      # def do_get_sell_form_fields
      #   message = {country_code: @api_client.country_code, local_version: @api_client.local_version, webapi_key: @api_client.webapi_key}
      #   @api_client.call(:do_get_sell_form_fields, message: message )
      # end

      def do_show_item_info_ext(item_id, get_desc = 0, get_image_url = 0, get_attribs = 0, get_postage_options = 0, get_company_info = 0, get_after_sales_service_conditions = 0)
          message = {
            session_handle: @api_client.session_handle,
            item_id: item_id,
            get_desc: get_desc,
            get_image_url: get_image_url,
            get_attribs: get_attribs,
            get_postage_options: get_postage_options,
            get_company_info: get_company_info,
            get_after_sales_service_conditions: get_after_sales_service_conditions
          }

          @api_client
            .call(:do_show_item_info_ext, message: message)
            .body[:do_show_item_info_ext_response]
      end
    end
  end
end
